# Caddy Server on Alpine Linux

[![](https://badge.imagelayers.io/zzrot/alpine-caddy:latest.svg)](https://imagelayers.io/?images=zzrot/alpine-caddy:latest 'Get your own badge on imagelayers.io')
[![Build Status](https://travis-ci.org/ZZROTDesign/alpine-caddy.svg?branch=master)](https://travis-ci.org/ZZROTDesign/alpine-caddy)

This is a [Docker](https://www.docker.com/) image for [Caddyserver](https://caddyserver.com/). This image runs with a base of [Alpine-Linux](http://www.alpinelinux.org/) making it extremely small, secure and fast.

## Usage
We recommend using our images in conjunction with [Docker-Compose](https://docs.docker.com/compose/). This allows for easier creation of containers with the proper volumes and ports enabled.

We have included an [example docker-compose](/examples/docker-compose.example.yml) file for use in a real project.

This image works with two defaults
1. A default [Caddyfile](/Caddyfile)
2. A default location inside the container for static files: /var/www/html

In order to use this image, we recommend running it with a volume connecting your static files to the root location of the docker file:

    docker run -d -p 80:80 -v $(pwd)/public:/var/www/html zzrot/alpine-caddy

The server will be available at your.docker.machine.ip.

This is the bare minimum needed to use this image. Although further customization is made easier with a docker-compose file.

The benefits of building an image with a overrideable Caddyfile are that you can   include your own by including another volume. To see a fully configured docker-compose file see this [example](/examples/docker-compose.example.yml).

For writing a custom Caddyfile please read [this](https://caddyserver.com/docs/caddyfile).

### Caddy as a reverse proxy

This image can also effectively be used as a reverse proxy. Included in the examples/ folder is an [example Caddyfile](/examples/Caddyfile.proxy.example).

The [example docker-compose](/examples/docker-compose.proxy-example.yml) shows how to include your custom Caddyfile as a volume as well as an example proxy set up with containers.


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


### Reporting Security Issues

If you discover a security issue in this Docker image, please report it by sending an email to docker@zzrot.com

This will allow us to assess the risk, and make a fix available before we add a bug report to the GitHub repository.

Thanks for helping make this image safe for everyone!

### License

The code is available under the [MIT License](/LICENSE).
