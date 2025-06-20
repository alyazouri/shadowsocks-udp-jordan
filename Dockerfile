FROM alpine:latest
RUN apk add --no-cache shadowsocks-libev
COPY config.json /etc/shadowsocks-libev/config.json
CMD ["/usr/bin/ss-server", "-c", "/etc/shadowsocks-libev/config.json"]