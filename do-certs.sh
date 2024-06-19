#!/bin/sh

openssl genpkey -algorithm RSA -out ca.key
openssl req -new -x509 -key ca.key -out ca.pem -days 365000 -subj "/C=IT/ST=Italy/L=Pisa/O=Zerynth/OU=R&D/CN=HostAPd-CA"
openssl genpkey -algorithm RSA -out server.key
openssl req -new -key server.key -out server.csr -subj "/C=IT/ST=Italy/L=Pisa/O=Zerynth/OU=R&D/CN=AccessPoint"
openssl x509 -req -in server.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out server.pem -days 365000

