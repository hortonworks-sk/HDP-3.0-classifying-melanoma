#!/bin/bash

HOSTNAME=$(hostname --fqdn)

curl "http://$HOSTNAME:8088/app/v1/services/tensortrain-service?user.name=user1" | python -m json.tool
