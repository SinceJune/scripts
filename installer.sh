#!/usr/bin/env bash
sudo locale-gen zh_CN.UTF-8 && \
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
sudo apt update && sudo apt dist-upgrade && \
sudo apt install docker-ce python python-pip default-jdk
