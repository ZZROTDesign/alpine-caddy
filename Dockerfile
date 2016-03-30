FROM alpine:edge
MAINTAINER ZZROT LLC <zzrotdesign@gmail.com>

RUN apk --no-cache add caddy


CMD ["caddy", "--conf", "/etc/Caddyfile"]
