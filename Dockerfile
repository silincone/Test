FROM alpine:latest

RUN apk update
RUN apk add --no-cache git
RUN apk add g++ make binutils cmake BearSSL Brotli CARES GSS LibPSL LibSSH2 MSH3 MbedTLS NGHTTP2 NGHTTP3 NGTCP2 Nettle QUICHE WolfSSL Zstd

WORKDIR /usr

RUN git clone https://github.com/curl/curl

RUN cd curl

WORKDIR /usr/curl

RUN cmake .
RUN make -j4
