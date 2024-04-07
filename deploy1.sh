#!/bin/bash

sudo docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I

if [[ $GIT_BRANCH == 'origin/dev' ]]; then

sudo docker tag myreactapp_img arpanamuriki/dev

sudo docker push arpanamuriki/dev

sudo docker images

fi
