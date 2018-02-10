#!/bin/bash

# Pull latest images, start AutoPVR and update running containers
docker-compose pull
docker-compose up -d
