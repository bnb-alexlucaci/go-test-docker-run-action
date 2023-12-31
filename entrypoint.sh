#!/usr/bin/env bash

if [ ! -z $INPUT_USERNAME ];
then echo $INPUT_PASSWORD | docker login $INPUT_REGISTRY -u $INPUT_USERNAME --password-stdin
fi

#if [ ! -z $INPUT_DOCKER_NETWORK ];
#then INPUT_OPTIONS="$INPUT_OPTIONS --network $INPUT_DOCKER_NETWORK"
#fi

if [ ! -z $INPUT_WORKING_DIRECTORY ];
then cd $INPUT_WORKING_DIRECTORY
fi

exec $INPUT_RUN
#exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" $INPUT_OPTIONS --entrypoint=$INPUT_SHELL $INPUT_IMAGE -c "${INPUT_RUN//$'\n'/;}"