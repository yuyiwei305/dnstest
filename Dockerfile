FROM alpine:3.10
RUN apk add --no-cache go dep git musl-dev
COPY . /go/src/bituniverse.org/dnstest
WORKDIR /go/src/bituniverse.org/dnstest
RUN dep ensure
RUN go build
RUN chmod +x ./dnstest
