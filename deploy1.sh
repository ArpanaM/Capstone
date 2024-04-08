#!/bin/bash
docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I
if [[ $GIT_BRANCH == "origin/master" ]]; then
docker tag capstone jeevaarasu/prod:cap
docker push jeevaarasu/prod:cap
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
docker tag capstone jeevaarasu/dev:app
docker push jeevaarasu/dev:app
fi
