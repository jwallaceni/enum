#!/bin/bash
echo ""
echo "Gathering domain info from crt.sh for $1"
echo ""
curl -s 'https://crt.sh/?q='"$1"'&output=json' | jq -r '.[] | .name_value' | sed 's/*.//g' | sort -u
echo ""
echo "Done"
