FROM alpine:latest

#ENV OPENSSL_ROOT_DIR=/usr/include/openssl
#ENV OPENSSL_LIB_DIR=/usr/lib

#RUN apk update

WORKDIR /usr/src

RUN apk add --no-cache git
#RUN apk add --no-cache perl g++ make binutils cmake openssl openssl-libs-static zlib openldap mbedtls heimdal nghttp2 c-ares libidn gnutls nss wolfssl libssh2
RUN apk add --no-cahce make cmake g++

RUN git clone https://github.com/microsoft/vcpkg
RUN cd vcpkg
RUN ./bootstrap-vcpkg.bat
RUN ./vcpkg install utfcpp zlib cppunit curl

RUN cd ../
RUN git clone https://github.com/taglib/taglib
RUN cd taglib
RUN mkdir build
RUN 

#RUN git clone https://github.com/curl/curl
#RUN cd curl

#WORKDIR /usr/curl

#RUN cmake .
#RUN make -j4
