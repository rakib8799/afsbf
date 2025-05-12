#!/bin/bash

set -e
set -o pipefail

echo "🚀 Starting full Laravel + Inertia + Vue.js deployment..."

# === CONFIGURATION ===
USER="afsbf"
SUB_DOMAIN="afsbf"
DOMAIN="mkrdev.xyz"
APP_DIR="/home/$USER/web/$SUB_DOMAIN.$DOMAIN/public_html"
PHP="php8.3"
NODE_ENV="production"

# === STEP 1: Sanity Checks ===
echo "🔍 Checking environment..."
command -v $PHP >/dev/null || { echo "❌ PHP ($PHP) not found"; exit 1; }
command -v composer >/dev/null || { echo "❌ Composer not found"; exit 1; }
command -v npm >/dev/null || { echo "❌ NPM not found"; exit 1; }

# === STEP 2: Navigate to App Directory ===
echo "📂 Changing to app directory..."
cd "$APP_DIR" || { echo "❌ Failed to access $APP_DIR"; exit 1; }

# === STEP 3: Git Pull with Safety ===
echo "📥 Pulling latest code..."
if [ ! -d ".git" ]; then
    echo "❌ No Git repository found."
    exit 1
fi
git config --global --add safe.directory "$APP_DIR"
git fetch origin main
git reset --hard origin/main

# === STEP 4: Backup .env & Database ===
echo "💾 Backing up .env and database..."
cp .env ".env.backup.$(date +%F-%H-%M-%S)"
sudo -u "$USER" $PHP artisan backup:run --only-db || echo "⚠️ Database backup skipped or failed"

# === STEP 5: Composer Install ===
echo "📦 Installing PHP dependencies..."
rm -rf vendor/
sudo -u "$USER" composer clear-cache
sudo -u "$USER" composer install --no-dev --optimize-autoloader

# === STEP 6: NPM Build ===
echo "🧱 Installing and building frontend..."
sudo -u "$USER" npm ci --legacy-peer-deps
sudo -u "$USER" npm run build

# === STEP 7: Laravel Maintenance Mode ===
echo "🛑 Enabling maintenance mode..."
sudo -u "$USER" $PHP artisan down || true

# === STEP 8: Laravel Optimizations ===
echo "⚡ Running Laravel optimizations..."
sudo -u "$USER" $PHP artisan config:clear
sudo -u "$USER" $PHP artisan cache:clear
sudo -u "$USER" $PHP artisan view:clear
sudo -u "$USER" $PHP artisan route:clear

sudo -u "$USER" $PHP artisan config:cache
sudo -u "$USER" $PHP artisan route:cache
sudo -u "$USER" $PHP artisan view:cache

# === STEP 9: Migrate DB ===
# echo "🗄️ Running database migrations..."
# sudo -u "$USER" $PHP artisan migrate --force

# === STEP 10: Queue / Horizon Restart ===
if grep -q "HorizonServiceProvider" config/app.php 2>/dev/null; then
    echo "🔁 Restarting Laravel Horizon..."
    sudo -u "$USER" $PHP artisan horizon:terminate
else
    echo "🔁 Restarting Laravel queues..."
    sudo -u "$USER" $PHP artisan queue:restart
fi

# === STEP 11: File Permissions ===
echo "🔐 Fixing permissions..."
chown -R "$USER":"$USER" .
chmod -R ug+rwx storage bootstrap/cache

# === STEP 12: Fix and Set Write Permissions for public/storage ===
echo "🔧 Fixing and setting write permissions for public/storage..."
if [ -L "public/storage" ]; then
    # Check if the symlink is broken
    if [ ! -e "public/storage" ]; then
        echo "⚠️ Broken symlink found. Recreating symlink..."
        rm -f public/storage
        sudo -u "$USER" $PHP artisan storage:link
    else
        echo "ℹ️ Storage symlink exists and is valid."
    fi
else
    echo "🔗 Symlink does not exist. Creating storage symlink..."
    sudo -u "$USER" $PHP artisan storage:link
fi

# Ensure write permissions for the storage directory
chown -R "$USER":"www-data" public/storage
chmod -R 775 public/storage

# === STEP 13: Maintenance Mode Off ===
echo "✅ Disabling maintenance mode..."
sudo -u "$USER" $PHP artisan up

# === DONE ===
echo "✅ Deployment completed successfully!"
