FROM alpine:latest

RUN apk update
RUN apk add --no-cache git
RUN apk add cmake

RUN git clone https://github.com/curl/curl

RUN cd curl

RUN cmake .
RUN make -j4
