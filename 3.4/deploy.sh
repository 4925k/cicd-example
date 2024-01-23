#!/bin/sh

## clone the repo provided in the command line argument
git clone $1 app

## cd into cloned folder
cd app

## build the compose file
docker build . -t 4925k/nodeapp

docker login --username $DOCKER_USER --password $DOCKER_PWD

## push image to docker hub registry
docker image push 4925k/nodeapp
