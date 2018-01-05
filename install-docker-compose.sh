#!/bin/bash
mkdir /opt/bin/
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /opt/bin/docker-compose
chmod +x /opt/bin/docker-compose
