# AutoPVR

AutoPVR is a fully automated PVR (personnal video recorder) using several pieces of software and binding them together using Docker containers.

* Bazarr to download subtitles
* Jackett to allow communication between Sonarr and lots of providers (torrents sites)
* Ombi to allow users to request medias
* Organizr as a signle pane of glass web interface
* Plex to manage medias and stream them to you devices
* qBittorrent to download torrents
* Radarr and Sonarr to scrape your favorite download providers for new releases
* Tautulli for advanced stats and automated newsletters
* Traefik as a reverse proxy and automated certificates provider

## Installation

All interesting config variables are in the `.env.example` file. Edit it to fit your setup and rename to `.env`. You should also edit Traefik's config in `traefik/acme.env.example` and rename it to `traefik/acme.env`.

### Folders

- `/config` -> This is this repo's root
- `/data` -> This is where I store movies, TV shows and downloads
- `/tmp/transcode` -> Temp dir for Plex transcodes

You can then run `docker-compose up` to start all the services.