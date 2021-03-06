FROM alpine:3.14.0

RUN apk add --no-cache \
    openssh-client \
    ca-certificates

RUN mkdir -p /root/.ssh

ENV SRC=/root/
ENV DST=/tmp
ENV SCP_ARGS=-r

CMD scp $SCP_ARGS $SRC $DST
