#!/usr/bin/env bash
git_commit=env.BRANCH_NAME
echo "${env.BRANCH_NAME}"
echo "docker login password="
echo "${env.docker_login_password}"
docker login --username=slathia15 --password=\'${env.docker_login_password}\' hub.docker.com
#tag =play:{$git_commit}
#docker build -t tag .