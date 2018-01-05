#!/bin/bash
mkdir -p /compose/log
curl -L https://raw.githubusercontent.com/Elders/Curator-docker/release-3.0.0/docker-compose.yaml -o /compose/log/docker-compose.yaml
echo "$1" | sudo docker-compose --file /compose/log/docker-compose.yaml up -d
