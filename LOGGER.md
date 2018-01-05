# Multi-container Docker setup for logging #

Dockerized version of ElasticSearch, Kibana and Curator run as CRON daily task

## What you get with this
1. ElasticSearch container to store data being logged
2. Kibana container to visualize data stored in ElasticSearch
3. Alpine container with daily CRON job to delete Elastic Search indices older then 10 days using Curator

## Linux install

### Setup docker-compose
Download the instalation file: `curl -L https://raw.githubusercontent.com/Elders/Curator-docker/release-3.0.0/install-docker-compose.sh -o ./install-docker-compose.sh`
Setup permissions: `chmod +x install-docker-compose.sh`
Execute the instalation file: `bash install-docker-compose.sh`

### Setup Logger
Download the instalation file: `curl -L https://raw.githubusercontent.com/Elders/Curator-docker/release-3.0.0/install-log.sh -o ./install-log.sh`
Setup permissions: `chmod +x install-log.sh`
Execute the instalation file: `bash install-log.sh`

## Install

The instructions assume that you have already installed [Docker](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/)

In order to get started be sure to clone this project onto your Docker Host. Create a directory on your host and clone using following command `git clone git@github.com:Elders/Curator-docker.git`

## How to get up and running
Once you've cloned the project navigate to the directory in which you cloned it. Run the following commands `docker-compose up -d`

The docker-compose ([docker-compose up reference](https://docs.docker.com/compose/reference/up/)) command will pull the images from Docker Hub and then link them together based on the information inside the docker-compose.yml file. This will create ports, links between containers, and configure applications as requrired

> If you need to stop stated containers use `docker-compose stop` and to start it `docker-compose start`. Using of `docker-compose down` will **delete** all data (i.e the logs)

**Current documentation is working with:**
> Docker version 1.11.1, build 5604cbe https://github.com/docker/docker/releases
> 
> Docker-compose version 1.7.1, build 0a9ab35 https://github.com/docker/compose/releases
> 
> Alpine 3.3.3 https://hub.docker.com/_/alpine/
> 
> ElasticSearch 2.3.3 https://hub.docker.com/_/elasticsearch/
> 
> Kibana 4.5.1 https://hub.docker.com/_/kibana/
> 
> Curator 3.5.1 https://pypi.python.org/pypi/elasticsearch-curator/3.5.1