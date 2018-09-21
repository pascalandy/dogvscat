#!/bin/bash
set -x

for server in {1..3}; do
  echo && echo "Once rebooted, visually confirm the config has been apply on dvc${server}" && \
  docker-machine ssh dvc${server} cat /etc/docker/daemon.json;
done;