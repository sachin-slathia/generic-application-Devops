#!/usr/bin/env bash

ansible-playbook ./Devops/ansible/Deploy.yml -become -u ec2-user 

