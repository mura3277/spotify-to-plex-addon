# Spotify to Plex Home Assistant Add-on

This add-on runs the official Spotify-to-Plex application inside Home Assistant.

## Features

- Sync Spotify playlists with Plex
- Download missing tracks via Lidarr / Tidal / SLSKD
- Scheduled automatic sync
- Multi-user support
- Smart caching

## Setup

You must configure:

- Spotify Client ID
- Spotify Client Secret
- Spotify Redirect URI
- Encryption Key

## Notes

- Runs via Ingress (no manual port exposure needed)
- All data stored in `/data`
- Uses official Docker image