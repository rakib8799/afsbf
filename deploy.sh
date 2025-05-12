#!/bin/bash

set -e
set -o pipefail

echo "🐳 Starting Dockerized Laravel + Inertia + Vue.js deployment..."

# === CONFIGURATION ===
APP_CONTAINER="app"
QUEUE_CONTAINER="queue"
NPM_CONTAINER="npm"
PHP="php"
COMPOSER="composer"
NODE_ENV="production"

# === STEP 1: Git Pull ===
echo "📥 Pulling latest code..."
git fetch origin main
git reset --hard origin/main

# === STEP 2: Composer Install ===
echo "📦 Installing PHP dependencies..."
docker compose exec -T $APP_CONTAINER $COMPOSER install --no-dev --optimize-autoloader

# === STEP 3: NPM Build ===
echo "🛠️ Building frontend assets with Vite..."
docker compose exec -T $NPM_CONTAINER npm ci
docker compose exec -T $NPM_CONTAINER npm run build

# === STEP 4: Laravel Optimizations ===
echo "⚡ Running Laravel optimizations..."
docker compose exec -T $APP_CONTAINER $PHP artisan migrate --force
docker compose exec -T $APP_CONTAINER $PHP artisan config:cache
docker compose exec -T $APP_CONTAINER $PHP artisan route:cache
docker compose exec -T $APP_CONTAINER $PHP artisan view:cache

# === STEP 5: Queue Restart (if using) ===
echo "🔁 Restarting queue workers..."
docker compose exec -T $APP_CONTAINER $PHP artisan queue:restart

# === STEP 6: Horizon Restart (if using) ===
# echo "🚀 Restarting Laravel Horizon..."
# docker compose exec -T $APP_CONTAINER $PHP artisan horizon:terminate

# === STEP 7: Permissions Fix (Optional) ===
echo "🔐 Fixing permissions..."
docker compose exec -T $APP_CONTAINER chown -R www-data:www-data /var/www/html
docker compose exec -T $APP_CONTAINER chmod -R ug+rw storage bootstrap/cache

echo "✅ Deployment complete!"
