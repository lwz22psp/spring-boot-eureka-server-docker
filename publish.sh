#!/bin/sh

#拉取最新代码
echo "git pull start"

git pull



echo "git pull finish"


#building
echo "building"
mvn package docker:build

docker-compose down



echo "run new docker"

docker-compose up -d