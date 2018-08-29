#!/bin/sh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker pull certbot/dns-ovh && \
docker run -it --rm --name certbot \
  -v "${BASEDIR}/config/certbot:/etc/letsencrypt" \
  certbot/dns-ovh certonly \
  --agree-tos \
  --email antoine.rahier@gmail.com \
  --no-eff-email \
  --dns-ovh \
  --dns-ovh-credentials /etc/letsencrypt/ovh-credentials.ini \
  --dns-ovh-propagation-seconds 120 \
  -d tv.twan.ovh