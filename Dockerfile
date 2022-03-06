FROM quay.io/minio/minio

COPY antrema-cassl.crt /usr/share/pki/ca-trust-source/anchors/antrema-cassl.crt
COPY antrema-caroot.crt /usr/share/pki/ca-trust-source/anchors/antrema-caroot.crt

RUN update-ca-trust