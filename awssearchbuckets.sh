#!/bin/bash
echo ""
echo "Searching for S3 buckets containing the term $1"
echo ""
APIKEY=$(awk 'NR==1 {print $3}' config.ini)
curl -s --request GET --url 'https://buckets.grayhatwarfare.com/api/v2/buckets?keywords='"$1"'&type=aws' --header 'Authorization: Bearer '"$APIKEY"'' | jq
echo ""
echo "Done"
