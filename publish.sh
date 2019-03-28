#!/bin/sh

#拉取最新代码
echo "git pull start"

git pull



echo "git pull finish"

docker-compose down

docker image rm eurekadocker/eurekadocker

#building
echo "building"
mvn package docker:build





echo "run new docker"

docker-compose up -d