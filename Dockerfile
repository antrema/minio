FROM quay.io/minio/minio

COPY antrema-cassl.crt /usr/share/pki/ca-trust-source/anchors/antrema-cassl.crt
COPY antrema-caroot.crt /usr/share/pki/ca-trust-source/anchors/antrema-caroot.crt
COPY antrema-caemail.crt /usr/share/pki/ca-trust-source/anchors/antrema-caemail.crt
COPY antrema-caopenvpn.crt /usr/share/pki/ca-trust-source/anchors/antrema-caopenvpn.crt

RUN update-ca-trust