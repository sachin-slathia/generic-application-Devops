#!/usr/bin/env bash
git_commit=env.BRANCH_NAME
tag =play:{$git_commit}
docker build -t tag .