#!/usr/bin/env bash
cd $(dirname $0)
docker build -t akram/docker-squid .
docker tag -f $(docker build . |grep built | cut -f3 -d\ ) docker-squid:latest

