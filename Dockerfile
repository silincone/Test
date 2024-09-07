FROM alpine:latest

#ENV OPENSSL_ROOT_DIR=/usr/include/openssl
#ENV OPENSSL_LIB_DIR=/usr/lib

#RUN apk update

#WORKDIR /usr

RUN apk add --no-cache git
#RUN apk add --no-cache perl g++ make binutils cmake openssl openssl-libs-static zlib openldap mbedtls heimdal nghttp2 c-ares libidn gnutls nss wolfssl libssh2
RUN apk add --no-cahce make cmake libcurl

#RUN git clone https://github.com/curl/curl
#RUN cd curl

#WORKDIR /usr/curl

#RUN cmake .
#RUN make -j4
