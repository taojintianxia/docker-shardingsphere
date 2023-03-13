# docker-shardingsphere-hugo

add the Dockerfile to build the static files of ShardingSphere website.

## How to Build
To build the docker-shardingsphere-hugo image, make sure you have installed docker in your machine.
go to the root directory of the project, and run the following command:
```bash
docker build . -t YOUR_NAME_SPACE/docker-hugo:latest
```
## How to Use
go to the docs directory of the ShardingSphere project, and run the following command:
```bash
docker run --rm -it --volume $(pwd):/opt/input taojintianxia/docker-hugo:latest

-- luanch up the server
docker run --rm -it --volume $(pwd):/opt/input taojintianxia/docker-hugo:latest server
```