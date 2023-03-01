#!/bin/sh

cd /data/certs
for dir in ./*/
do
  (cd "$dir" && test -r certificate.crt && openssl pkcs12 -export -out keystore.p12 -inkey privatekey.key -in certificate.crt -passout pass:)
done
chmod -R +r /data/certs