#!/usr/bin/env bash
set -e

echo "RUN.SH STARTED"

SPOTIFY_API_CLIENT_ID=$(grep -o '"spotify_api_client_id"[[:space:]]*:[[:space:]]*"[^"]*"' /data/options.json | cut -d '"' -f4)

SPOTIFY_API_CLIENT_SECRET=$(grep -o '"spotify_api_client_secret"[[:space:]]*:[[:space:]]*"[^"]*"' /data/options.json | cut -d '"' -f4)

SPOTIFY_API_REDIRECT_URI=$(grep -o '"spotify_api_redirect_uri"[[:space:]]*:[[:space:]]*"[^"]*"' /data/options.json | cut -d '"' -f4)

ENCRYPTION_KEY=$(grep -o '"encryption_key"[[:space:]]*:[[:space:]]*"[^"]*"' /data/options.json | cut -d '"' -f4)

PLEX_APP_ID=$(grep -o '"plex_app_id"[[:space:]]*:[[:space:]]*"[^"]*"' /data/options.json | cut -d '"' -f4)

export SPOTIFY_API_CLIENT_ID
export SPOTIFY_API_CLIENT_SECRET
export SPOTIFY_API_REDIRECT_URI
export ENCRYPTION_KEY
export PLEX_APP_ID

echo "ENV LOADED"

exec /docker-entrypoint.sh "$@"