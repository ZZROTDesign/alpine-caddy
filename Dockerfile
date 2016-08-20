FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add tini git openssh-client \
    && apk --no-cache add --virtual devs tar curl

#Install Caddy Server, and All Middleware
RUN curl "https://caddyserver.com/download/build?os=linux&arch=amd64&features=cors%2Cfilemanager%2Cgit%2Chugo%2Cipfilter%2Ccloudflare%2Cdigitalocean%2Cdnsimple%2Cdyn%2Cgandi%2Cgooglecloud%2Cnamecheap%2Crfc2136%2Croute53%2Cvultr" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy

#Remove build devs
RUN apk del devs

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

#USER caddy

ENTRYPOINT ["/sbin/tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
