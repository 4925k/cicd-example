#!/bin/bash

## clone the repo provided in the command line argument
git clone $1 app

## cd into cloned folder
cd app

## build the compose file
docker compose build

## push image to docker hub registry
docker image push 4925k/nodeapp
