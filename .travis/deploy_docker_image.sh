#!/bin/sh

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
TAG="latest"
docker build -t $DOCKER_USERNAME/scrapebbc:$TAG .
docker push $DOCKER_USERNAME/scrapebbc:$TAG
