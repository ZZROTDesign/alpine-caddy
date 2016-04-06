if [ "$TRAVIS_BRANCH" == "master" ]; then
	curl -s -X POST -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "master"}'  https://registry.hub.docker.com/u/zzrot/alpine-caddy/trigger/848486fa-c49d-4a12-8846-40a55f162ead/;
fi
