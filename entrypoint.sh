#!/bin/bash
set -euo pipefail

# Strip http:// or https:// from domains if necessary
FRONTEND_DOMAIN=${FRONTEND_DOMAIN##*://}
BACKEND_DOMAIN=${BACKEND_DOMAIN##*://}

echo "Using frontend: ${FRONTEND_DOMAIN} with port: ${FRONTEND_PORT}"
echo "Using backend: ${BACKEND_DOMAIN} with port: ${BACKEND_PORT}"

exec caddy run --config Caddyfile --adapter caddyfile 2>&1
