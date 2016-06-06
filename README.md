# Alpine image with recurring Elastic Search Curator job #

Docker image including latest version of [Alpine](https://github.com/gliderlabs/docker-alpine) running Elastic Search Curator as CRON daily task

## Usage
`docker run -d --name {container-name} --link {elastic-search-container-name}:elasticsearch eldersoss/curator-docker --host {elastic-search-host} --port {elastic-search-port} {curator-command}`

`docker run` - [reference](https://docs.docker.com/engine/reference/run/)

`-d` - [reference](https://docs.docker.com/engine/reference/run/#detached-d)

`--name` - [reference](https://docs.docker.com/engine/reference/run/#name-name)

`--link` - [reference](https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/)

`--host` - [reference](https://www.elastic.co/guide/en/elasticsearch/client/curator/3.5/host.html)

`--port` - [reference](https://www.elastic.co/guide/en/elasticsearch/client/curator/3.5/port.html)

`{curator-command}`- [reference](https://www.elastic.co/guide/en/elasticsearch/client/curator/3.5/commands.html)

Example:
`docker run -d --name curator_cron --link dockerelasticsearchkibanacurator_log_1:elasticsearch eldersoss/curator-docker --host elasticsearch --port 9200 delete indices --older-than 10 --timestring '%Y.%m.%d' --time-unit days`

**[Example usage in multi-container setup](https://github.com/Elders/Curator-docker/blob/master/LOGGER.md)**

**Current documentation is working with:**
> Docker version 1.11.1, build 5604cbe https://github.com/docker/docker/releases
> 
> Alpine 3.3.3 https://hub.docker.com/_/alpine/
> 
> ElasticSearch 2.3.3 https://hub.docker.com/_/elasticsearch/
> 
> Kibana 4.5.1 https://hub.docker.com/_/kibana/
> 
> Curator 3.5.1 https://pypi.python.org/pypi/elasticsearch-curator/3.5.1
