#!/bin/bash

domain=psi.local
rm $domain  -Rf
./minica --domains $domain
cat ./$domain/cert.pem ./$domain/key.pem > ./$domain/all.pem
cp ./$domain/* ../etc/nginx/conf.d/certs/ -Rf
