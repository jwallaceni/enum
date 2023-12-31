#!/bin/bash
echo ""
APIKEY=$(awk 'NR==2 {print $3}' config.ini)
curl -s --request GET --url 'https://api.viewdns.info/reversedns/?ip='"$1"'&apikey='"$APIKEY"'&output=json' | jq
