  GNU nano 7.2                                                                crt.sh                                                                         
#!/bin/bash
echo ""
echo "Gathering domain info from crt.sh for $1"
echo ""
curl -s 'https://crt.sh/?q='"$1"'&output=json' | jq -r '.[] | .name_value' | sort -u | sed 's/*.//g'
echo ""
echo "Done"
