#!/bin/bash

set -e

# Example usage:
# build.sh nitrolabs/meteor-launchpad v1.4.4

IMAGE_NAME=${1:-"nitrolabs/meteor-launchpad"}

printf "\n[-] Building $IMAGE_NAME...\n\n"

docker build -f dev.dockerfile -t $IMAGE_NAME:devbuild .
docker build -t $IMAGE_NAME:latest .
