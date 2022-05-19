#!/bin/sh

[ -d ./project ] && rm -rf project
echo Enter docker username
read username
docker login -u $username

echo Enter git clone link
read gitlink
git clone $gitlink project
cd project
docker build -t im .

echo Enter docker repository
read repository
echo Enter tag
read tag

docker tag im $username/$repository:$tag
docker push $username/$repository:$tag
