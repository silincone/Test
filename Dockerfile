FROM alpine:latest

RUN apk update

RUN apk add --no-cache git
RUN apk add --no-cache perl g++ make binutils cmake openssl openssl-libs-static zlib openldap mbedtls heimdal nghttp2 c-ares libidn gnutls nss wolfssl libssh2

RUN git clone https://github.com/curl/curl
RUN cd curl

WORKDIR /usr/curl

RUN cmake .
RUN make -j4
