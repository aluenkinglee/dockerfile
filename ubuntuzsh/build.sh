#!/bin/bash

# Enter the directory
cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1

# Get image username
USERNAME="$1"
# Get image from directory name
IMAGE="$(basename "$(pwd)")"
versions="latest"

docker  build -t "$USERNAME/$IMAGE:$versions" -f Dockerfile .

# Tag latest image
latest=$(tr ' ' '\n' <<< "$versions" | sed '/^$/d' | sort -V | tail -2 | head -1)
docker tag "$USERNAME/$IMAGE:$latest" "$USERNAME/$IMAGE:latest"