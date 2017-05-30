#!/bin/bash
docker network create -d overlay --subnet 192.168.23.0/24 --opt com.docker.network.driver.mtu=931 lab-network
docker stack deploy -c docker-compose-bad.yml test
sleep 300
docker stack deploy -c docker-compose.yml test

