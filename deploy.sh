#!/bin/bash

set -e
set -o pipefail

echo "🚀 Starting Laravel, Inertia & Vue.js deployment..."

# === CONFIGURATION ===
USER="afsbf"
SUB_DOMAIN="afsbf"
DOMAIN="mkrdev.xyz"
APP_DIR="/home/$USER/web/$SUB_DOMAIN.$DOMAIN/public_html"
PHP="php8.3"

# === STEP 1: Navigate to App Directory ===
echo "📂 Navigating to app directory..."
cd "$APP_DIR" || {
    echo "❌ Failed to access $APP_DIR"
    exit 1
}

# === STEP 2: Git Pull ===
if [ ! -d ".git" ]; then
    echo "❌ No Git repository found."
    exit 1
fi

echo "📥 Pulling latest code..."
git config --global --add safe.directory "$APP_DIR"
git reset --hard
git pull origin main --ff-only

# === STEP 3: Clear Vendor Directory ===
echo "🧹 Deleting vendor directory..."
rm -rf vendor/

# === STEP 4: Composer Install ===
echo "📦 Installing Composer dependencies..."
echo "🧹 Clearing Composer cache..."
sudo -u "$USER" composer clear-cache || {
    echo "❌ Composer cache clear failed"
    exit 1
}

sudo -u "$USER" composer install --no-dev --optimize-autoloader || {
    echo "❌ Composer install failed"
    exit 1
}

# === STEP 5: Laravel Permissions Fix ===
echo "🔧 Fixing Laravel storage and cache permissions..."
mkdir -p storage/logs bootstrap/cache
chown -R "$USER":"$USER" storage bootstrap
chmod -R 775 storage bootstrap/cache

# === STEP 7: Frontend Build ===
echo "🧱 Building frontend (npm/yarn)..."
sudo -u "$USER" npm install
sudo -u "$USER" npm run build

# === DONE ===
echo "✅ Deployment completed successfully!"
