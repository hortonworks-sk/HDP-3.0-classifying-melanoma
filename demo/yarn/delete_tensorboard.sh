#!/bin/bash

HOSTNAME=$(cat /proc/sys/kernel/hostname)

curl -X DELETE http://$HOSTNAME:8088/app/v1/services/tensorboard-service?user.name=user1
