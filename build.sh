#!/usr/bin/env bash
if [ $# -ne 1 ]; then
  echo "$0 script requires parameter tag-name"
  exit 1
fi

cd $(dirname $0)
docker build -t docker.io/akrambenaissi/docker-squid .
docker tag -f $(docker build . |grep built | cut -f3 -d\ ) docker.io/akrambenaissi/docker-squid:latest
docker tag -f $(docker build . |grep built | cut -f3 -d\ ) docker.io/akrambenaissi/docker-squid:$1
