#!/bin/bash

#Build docker image

docker build -t capstoneimg .

#Build Docker Container

docker run --name capstonecontainer -d -p 80:80 capstoneimg
