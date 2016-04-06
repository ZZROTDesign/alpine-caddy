# Caddy Server on Alpine Linux

[![](https://badge.imagelayers.io/zzrot/alpine-caddy:latest.svg)](https://imagelayers.io/?images=zzrot/alpine-caddy:latest 'Get your own badge on imagelayers.io')
[![Build Status](https://travis-ci.org/ZZROTDesign/alpine-caddy.svg?branch=master)](https://travis-ci.org/ZZROTDesign/alpine-caddy)

This is a [Docker](https://www.docker.com/) image for [Caddyserver](https://caddyserver.com/). This image runs with a base of [Alpine-Linux](http://www.alpinelinux.org/) making it extremely small, secure and fast.

## Usage
We recommend using our images in conjunction with [Docker-Compose](https://docs.docker.com/compose/). This allows for easier creation of containers with the proper volumes and ports enabled.

We have included a docker-compose.yml as an example for this image. To run this container as standalone with docker-compose:

    docker-compose build
    docker-compose up -d

To run this image without docker-compose, you can pull it from the docker registry by running:

    docker run -d -p 80:80 -v $(pwd)/Caddyfile:/etc/Caddyfile -v $(pwd)/public:/var/www/html zzrot/alpine-caddy

The server will be available at your.docker.machine.ip.

If you would like to include this image into a larger docker-compose project, simply copy the "caddy" service in our docker-compose.yml into your own compose file. Additionally exchange

    build: .

with

    image: zzrot/alpine-caddy


## Contributing to Alpine-Caddy

### Team members

* [Sean Kilgarriff](https://github.com/Skilgarriff) sean@zzrot.com  
* [Killian Brackey](https://github.com/killianbrackey) killian@zzrot.com

Don't hesitate to get in contact with either one of us with problems, questions, etc.


### Adding new features

* Fork it!
* Create your feature branch: git checkout -b my-new-feature
* Commit your changes: git commit -am 'Add some feature'
* Push to the branch: git push origin my-new-feature
* Submit a pull request :D


Don’t get discouraged! We estimate that the response time from the
maintainers is around: 24 hours.
