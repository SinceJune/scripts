#!/usr/bin/env bash
echo "installing dependency..." && \
sudo locale-gen zh_CN.UTF-8 && \
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
sudo apt update && sudo apt -y dist-upgrade && \
sudo apt install docker-ce python python-pip default-jdk && \
sudo sysctl -w vm.max_map_count=262144
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.2.tar.gz && \
tar -zxvf elasticsearch-6.2.2.tar.gz && \
wget https://artifacts.elastic.co/downloads/logstash/logstash-6.2.2.tar.gz && \
tar -zxvf logstash-6.2.2.tar.gz && \
wget https://artifacts.elastic.co/downloads/kibana/kibana-6.2.2-linux-x86_64.tar.gz && \
tar -zxvf kibana-6.2.2-linux-x86_64.tar.gz && \
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.2.2-linux-x86_64.tar.gz && \
tar -zxvf filebeat-6.2.2-linux-x86_64.tar.gz
