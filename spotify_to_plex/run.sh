#!/usr/bin/with-contenv bashio

export SPOTIFY_API_CLIENT_ID=$(bashio::config 'spotify_api_client_id')
export SPOTIFY_API_CLIENT_SECRET=$(bashio::config 'spotify_api_client_secret')
export SPOTIFY_API_REDIRECT_URI=$(bashio::config 'spotify_api_redirect_uri')

export ENCRYPTION_KEY=$(bashio::config 'encryption_key')
export PLEX_APP_ID=$(bashio::config 'plex_app_id')

export TIDAL_API_CLIENT_ID=$(bashio::config 'tidal_api_client_id')
export TIDAL_API_CLIENT_SECRET=$(bashio::config 'tidal_api_client_secret')
export LIDARR_API_KEY=$(bashio::config 'lidarr_api_key')
export SLSKD_API_KEY=$(bashio::config 'slskd_api_key')

exec /docker-entrypoint.sh