FROM alpine:latest

RUN apk update

RUN apk add --no-cache git
RUN git clone https://github.com/curl/curl
RUN cd curl

WORKDIR /usr/curl

RUN apk add g++ make binutils cmake openssl zlib openldap mbedtls heimdal nghttp2 c-ares libidn gnutls nss wolfssl libssh2

RUN cmake .
RUN make -j4
