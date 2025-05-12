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
sudo -u "$USER" composer clear-cache
sudo -u "$USER" composer install --no-interaction --prefer-dist --optimize-autoloader --no-dev --no-scripts || {
    echo "❌ Composer install failed"
    exit 1
}
chown -R "$USER":"$USER" vendor/
chmod -R 755 vendor/

# === STEP 5: Laravel Setup ===
echo "🔐 Setting up Laravel..."

# Ensure .env exists
if [ ! -f ".env" ]; then
    echo "❌ .env file is missing!"
    exit 1
fi

# === STEP 6: Storage Symlink ===
echo "🔗 Creating storage symlink..."
$PHP artisan storage:link || {
    echo "❌ Failed to create storage link"
    exit 1
}

# === STEP 7: Run Migrations ===
echo "🛠 Running migrations..."
$PHP artisan migrate --force || {
    echo "❌ Migrations failed"
    exit 1
}

# === STEP 8: Node.js Setup ===
echo "📦 Installing Node.js dependencies..."
sudo -u "$USER" npm install || {
    echo "❌ npm install failed"
    exit 1
}

echo "🏗 Building front-end assets..."
sudo -u "$USER" npm run build || {
    echo "❌ Frontend build failed"
    exit 1
}

# === STEP 9: Final Permissions ===
echo "🔐 Fixing file & folder permissions..."
find "$APP_DIR" -type f -exec chmod 644 {} \;
find "$APP_DIR" -type d -exec chmod 755 {} \;

echo "✅ Deployment completed successfully!"
