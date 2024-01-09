#!/bin/bash
APIKEY=$(awk 'NR==3 {print $3}' config.ini)
wpscan --url $1 --api-token $APIKEY
