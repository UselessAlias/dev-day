#!/bin/sh

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
TAG="latest"
docker build -t $TRAVIS_REPO_SLUG:$TAG
docker push $TRAVIS_REPO_SLUG:$TAG
