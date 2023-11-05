#!/bin/bash

# Run with: ./docker-run.sh <image-name>
# Choose either dev or prod:

# DEV: Run the docker image in dev without compose:
# docker run -p 3000:3000 -v "$(pwd):/app" -v /app/node_modules --rm $1

# PROD: Run the docker image in prod:
docker run -p 3000:3000 $1
