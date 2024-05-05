#!/bin/bash
# this script is used for curl|bash and is used for using install.sh using curl|bash
read -p "Enter name/url: " url
curl https://install.oddcell.ca/install.sh > /tmp/install.sh
chmod 754 /tmp/install.sh
ARGS="/tmp/install.sh $url"
eval $ARGS
