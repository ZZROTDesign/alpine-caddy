FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add caddy

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

CMD ["caddy", "--conf", "/etc/Caddyfile"]
