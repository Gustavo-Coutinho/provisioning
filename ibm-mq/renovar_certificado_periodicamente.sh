#!/bin/bash
# renovar certificado certbot
docker compose -f /home/ubuntu/mensageria2/renovar_certificado.yaml up nginx certbot -d
docker compose -f /home/ubuntu/mensageria2/renovar_certificado.yaml exec nginx nginx -s reload
docker compose -f ~/mensageria2/ibm-mq.yaml up -d --remove-orphans
