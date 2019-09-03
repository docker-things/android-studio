#!/bin/bash

# Command used to launch docker
DOCKER_CMD='docker'

# Where to store the backups
BACKUP_PATH='/media/store/docker-backup'

# The name of the docker image
PROJECT_NAME="android-studio"

# BUILD ARGS
BUILD_ARGS=(
    --build-arg DOWNLOAD_URL="https://dl.google.com/dl/android/studio/ide-zips/3.5.0.21/android-studio-ide-191.5791312-linux.tar.gz"
    )

# LAUNCH ARGS
RUN_ARGS=(
    -e DISPLAY=$DISPLAY
    -v /tmp/.X11-unix:/tmp/.X11-unix

    --memory="12g"
    --cpu-shares=1024

    -v $(pwd)/data:/home/$(whoami)

    --rm
    -d
    )
