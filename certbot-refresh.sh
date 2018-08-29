#!/bin/sh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker pull certbot/dns-ovh && \
docker run -it --rm --name certbot \
  -v "${BASEDIR}/config/certbot:/etc/letsencrypt" \
  certbot/dns-ovh renew