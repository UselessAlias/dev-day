#!/bin/sh

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
TAG="latest"
docker build -t scrapebbc:$TAG .
docker push scrapebbc:$TAG
