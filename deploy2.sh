#!/bin/bash
# Push docker image to docker hub registry

# docker login
echo "Logging into Docker Hub"

docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I

#    docker tag capstoneimg arpanamuriki/prod
#    docker images
#    docker push arpanamuriki/prod


echo $GIT_BRANCH
if [[ $GIT_BRANCH == "origin/master" ]]; then
docker tag capstoneimg arpanamuriki/prod
docker push arpanamuriki/prod
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
docker tag capstoneimg arpanamuriki/dev
docker push arpanamuriki/dev
fi
