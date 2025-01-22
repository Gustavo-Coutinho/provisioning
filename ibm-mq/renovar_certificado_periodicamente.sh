#!/bin/bash
# renovar certificado certbot
docker compose -f /home/ubuntu/ibm-mq/renovar_certificado.yaml up nginx certbot -d
docker compose -f /home/ubuntu/ibm-mq/renovar_certificado.yaml exec nginx nginx -s reload
docker compose -f ~/ibm-mq/ibm-mq.yaml up -d --remove-orphans
