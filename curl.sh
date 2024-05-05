#!/bin/bash
# this script is used for curl|bash and is used for using install.sh using curl|bash
echo "Hello!"
echo "Welcome to the Universal Install Script"
read -p "Enter name/url: " url
echo "installing..."
curl https://install.oddcell.ca/install.sh > /tmp/install.sh
chmod 754 /tmp/install.sh
ARGS="/tmp/install.sh $url"
eval $ARGS
