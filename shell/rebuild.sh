#!/bin/bash
docker-compose down

docker volume rm $(sudo docker volume ls -qf dangling=true)

rm -rf ./gogs

docker-compose up -d --build

docker ps
