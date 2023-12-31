#!/bin/bash
echo ""
echo "Scraping Shodan via nrich to find system information..."
echo ""
shodan search --fields ip_str $1 | sed 's/\t//g' > /tmp/output.txt
nrich /tmp/output.txt
echo ""
echo "Done"
