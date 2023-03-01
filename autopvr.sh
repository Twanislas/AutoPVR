#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" || exit 1

# Pull latest images, update running containers and start AutoPVR
docker-compose pull
docker-compose up -d
