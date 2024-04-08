#!/bin/bash
# Push docker image to docker hub registry

# docker login
echo "Logging into Docker Hub"

docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I

#    docker tag capstoneimg arpanamuriki/prod
#    docker images
#    docker push arpanamuriki/prod


echo "Value=$GIT_BRANCH"
if [[ $GIT_BRANCH == "origin/main" ]]; then
docker tag capstoneimg arpanamuriki/prod:v1
docker push arpanamuriki/prod:v1
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
docker tag capstoneimg arpanamuriki/dev:v2
docker push arpanamuriki/dev:v2
fi
