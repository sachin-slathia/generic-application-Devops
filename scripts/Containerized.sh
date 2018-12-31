#!/usr/bin/env bash
git_commit=env.BRANCH_NAME
echo "${env.BRANCH_NAME}"
docker login --username=slathia15 --password=\'$docker_login_password\'
#tag =play:{$git_commit}
#docker build -t tag .