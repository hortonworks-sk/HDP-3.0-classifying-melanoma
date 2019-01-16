#!/bin/bash

HOSTNAME=$(hostname --fqdn)

curl -X DELETE http://$HOSTNAME:8088/app/v1/services/tensortrain-service?user.name=user1
