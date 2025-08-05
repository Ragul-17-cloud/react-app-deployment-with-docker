#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#stopping existing container:
docker stop c627c873f679
docker rm c627c873f679

#building a image:
docker build -t myreact .

#running a container from the created image:
docker run -d -it --name reactproject  -p 9999 :80 myreact:latest

#pushing the image to dockerhub:
docker tag myreact:latest ragul17102001/mysecondtime:v1
docker push ragul17102001/mysecondtime:v1
