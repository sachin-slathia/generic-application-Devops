#!/usr/bin/env bash
git_commit=env.BRANCH_NAME
echo $git_commit
#tag =play:{$git_commit}
#docker build -t tag .