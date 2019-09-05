#!/bin/bash
sudo rm -rf config/plex/Library/Application\ Support/Plex\ Media\ Server/Codecs/* && docker-compose restart plex
