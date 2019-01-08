#!/usr/bin/env bash

set -e;

TAG=latest
PROJECT_REPOSITORY=hyp3r/image-proxy
ECR_URL=566438453199.dkr.ecr.us-east-1.amazonaws.com

`aws ecr get-login --no-include-email`

docker build -t $PROJECT_REPOSITORY:$TAG .
docker tag $PROJECT_REPOSITORY:$TAG $ECR_URL/$PROJECT_REPOSITORY:$TAG
docker push $ECR_URL/$PROJECT_REPOSITORY:$TAG

