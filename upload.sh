if [ "$TRAVIS_BRANCH" == "master" ]; then
	curl -s -X POST -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "master"}'  $DOCKER_TRIGGER;
fi
