# Enum - Recon Enumeration Scripts

## Dependencies

- Python/PIP
- Shodan CLI
- nrich
- Subfinder
- nmap
- dirb
- WPScan
- nikto
- whatweb
- jq
- Grayhatwarfare API key
- ViewDNS.info API key
- WPScan API key

## Installation in Kali

sudo chmod +x install.sh

sudo ./install.sh

Configure Shodan CLI and add Grayhatwarfare, WPScan and ViewDNS.info API keys to config.ini

Note that in other Linux distros tools such as Subfinder, dirb, nmap and Shodan CLI may have to be installed manually

Mute script feedback by commenting with the '#' character if writing results to a file

## Usage

### ./nslookup.sh [domain]

Perform an nslookup on a domain name

### ./whois.sh [IP address]

Perform a whois search on an IP address

### ./crt.sh [domain] (optional > [output file])

Pull domain names from SSL certificates using crt.sh ommitting the wildcard characters (*.)

### ./initial.sh [filename] [output file]

Scan for subdomains in a list of domains using Subfinder and output results to a file

### ./nmap.sh [filename] [output file]

Perform an nmap vulnerability scan with version detection in a file/list of targets and output results to a file

### ./dirb.sh [domain] [output file]

Perform a directory brute force with dirb using the wordlist /usr/share/wordlists/dirb/common.txt and output results to a file

### ./nikto.sh [domain] (optional > [output file])

Perform a vulnerability scan using nikto

### ./whatweb.sh [domain]

Enumerate what technologies are being used by the defined website/app

### ./reverseiplookup.sh [IP address]

Find all sites hosted on a given server

### ./reversewhois.sh "[search term]"

Find domain names owned by an individual or company

### ./reversednslookup.sh [IP address]

View the reverse DNS entry for an IP address

### ./iteratehosts.sh [filename] (optional > [output file])

Resolve a list of hostnames from a file/list of domains or subdomains

### ./iterateips.sh [filename] (optional > [output file])

Resolve a list of IP addresses from a file/list of domains or subdomains, useful for using with the nrich.sh and shodan.sh scripts

### ./wpscan [domain]

Scan Wordpress based websites using WPScan

### ./awssearchbuckets.sh "[search term]" (optional > [output file])

Search for open AWS S3 buckets by keyword using the Grayhatwarfare API

### ./awsiteratebuckets.sh [filename] (optional > [output file])

Search for the AmazonS3 string in the header paramaters in a file/list of domains or subdomains

### ./hunter.sh "[search term]" (optional > [output file])

Perform a vulnerability hunt by keyword, IP address or domain name using shodan-cli and nrich

### ./shodan.sh [filename] (optional > [output file])

Iterate through a file/list of IP addresses and perform a Shodan host lookup on each address

### ./nrich.sh [filename] (optional > [output file])

Pass a file/list of IP addresses to nrich for further recon
