FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add --virtual devs tar curl \
    && apk --no-cache add tini

#Install Caddy Server, and Git Middleware
RUN curl "https://caddyserver.com/download/build?os=linux&arch=amd64&features=git" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

#USER caddy

ENTRYPOINT ["tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
