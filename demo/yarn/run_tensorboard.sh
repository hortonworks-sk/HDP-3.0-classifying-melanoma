#!/bin/bash

HOSTNAME=$(hostname --fqdn)

curl -X POST -H "Content-Type: application/json" http://$HOSTNAME:8088/app/v1/services?user.name=user1 -d @tensorboard.json
