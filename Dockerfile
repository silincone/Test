FROM alpine:latest

RUN apk update
RUN apk add --no-cache git
RUN apk add g++ make binutils cmake

WORKDIR /usr

RUN git clone https://github.com/curl/curl

RUN cd curl

WORKDIR /usr/curl

RUN cmake .
RUN make -j4
