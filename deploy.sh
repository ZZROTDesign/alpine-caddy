#bin/bash

curl -s -X POST -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "master"}'  $DOCKER_TRIGGER;
