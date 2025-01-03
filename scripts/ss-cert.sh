#!/bin/sh
# this script 1.- generate "certs" folder, 2.- create selfsigned certificates with an input domain, 3.- stores them in ~/certs folder. Note that this CRT can be used as CA root for trust and can be used for issuing new certs.


if [ "$#" -ne 1 ]
then
  echo "Usage: Must supply a domain, for "example test.com""
  exit 1
fi

DIRECTORIO_CERTS="$HOME/certs"

if [ ! -d "$DIRECTORIO_CERTS" ]; then
    mkdir "$DIRECTORIO_CERTS"
else
  echo
fi


DOMAIN=$1

cd ~/certs

openssl genrsa -out $DOMAIN.key 2048
openssl req -new -key $DOMAIN.key -out $DOMAIN.csr

cat > $DOMAIN.ext << EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:TRUE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
issuerAltName = issuer:copy
subjectAltName = @alt_names
[alt_names]
DNS.1 = *.$DOMAIN
EOF

openssl x509 -req -in $DOMAIN.csr -signkey $DOMAIN.key \
-out $DOMAIN.crt -days 999 -sha256 -extfile $DOMAIN.ext

result=$(openssl x509 -in $DOMAIN.crt -text -noout)

echo " details of the generated certificate "
echo " ##################################################"
echo $result
echo " ##################################################"
