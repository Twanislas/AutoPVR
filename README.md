# autopvr
AutoPVR is a fully automated PVR (personnal video recored) using several pieces of software and binding them together using Docker containers.
* Plex to manage medias and stream them to you devices
* Sonarr to scrape your favorite download providers for new releases
* Jackett to allow communication between Sonarr and lots of providers (torrents sites)
* qBittorrent to download torrents

## Installation
AutoPVR uses docker-compose. Use the docker-compose.yml.example file, tailor it to your needs and save a copy under `docker-compose.yml`. You can then run `docker-compose up` to start all the services.

The defaults in the sample file are sane as a starting point if you never used any of these softs and want to start with a fresh config.