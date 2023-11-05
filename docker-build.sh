#!/bin/bash

# This is not supposed to be executd. Only here for reference. The commands are only for prod, so should be part of cd pipeline only.

# Build the docker image for production 
docker build --target production -t $1 .

# Run the docker image
# docker run -p 3000:3000 $1