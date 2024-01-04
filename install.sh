#!/bin/bash
apt install subfinder
apt install jq
apt install python3-pip
pip install -U --user shodan
wget https://gitlab.com/api/v4/projects/33695681/packages/generic/nrich/latest/nrich_latest_x86_64.deb
sudo dpkg -i nrich_latest_x86_64.deb

chmod +x crt.sh initial.sh iteratehosts.sh iterateips.sh nrich.sh nslookup.sh awssearchbuckets.sh awsiteratebuckets.sh hunter.sh reversednslookup.sh reverseiplookup.sh reversewhois.sh shodan.sh whois.sh

echo ""
echo "Configure Shodan CLI and add Grayhatwarfare and ViewDNS.info API keys to config.ini"
echo ""
echo "Shodan CLI docs: https://help.shodan.io/command-line-interface/0-installation"
echo ""
echo "Installation complete"
echo ""