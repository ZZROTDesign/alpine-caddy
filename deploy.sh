#!/usr/bin/env bash

curl -s -X POST -H "Content-Type: application/json" --data '{"build": true}'  $DOCKER_TRIGGER;
