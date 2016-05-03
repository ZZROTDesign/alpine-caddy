FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add tini git \
    && apk --no-cache add --virtual devs tar curl

#Install Caddy Server, and All Middleware
RUN curl "https://caddyserver.com/download/build?os=linux&arch=amd64&features=cors,git,hugo,ipfilter,jsonp,jwt,mailout,prometheus,realip,search,upload" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy

#Remove build devs
RUN apk del devs

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

#USER caddy

ENTRYPOINT ["tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
