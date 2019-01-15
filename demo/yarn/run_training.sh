#!/bin/bash

HOSTNAME=$(cat /proc/sys/kernel/hostname)

curl -X POST -H "Content-Type: application/json" http://$HOSTNAME:8088/app/v1/services?user.name=user1 -d @classifier_train.json
