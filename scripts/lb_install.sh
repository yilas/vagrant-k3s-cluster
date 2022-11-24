#!/bin/bash
# Download and deploy Traefik as a front load balancer
curl https://github.com/traefik/traefik/releases/download/v2.9.5/traefik_v2.9.5_linux_amd64.tar.gz -o /tmp/traefik.tar.gz -L
cd /tmp/
tar xvfz ./traefik.tar.gz
nohup ./traefik --configFile=/tmp/traefikconf/static_conf.toml &> /dev/null&
