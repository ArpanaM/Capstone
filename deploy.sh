#!/bin/bash
# Push docker image to docker hub registry

# docker login

sudo docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I
udo ocker tag myreactapp_img arpanamuriki/dev
docker images
sudo docker push arpanamuriki/dev
