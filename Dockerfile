FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add caddy

CMD ["caddy", "--conf", "/etc/Caddyfile"]
