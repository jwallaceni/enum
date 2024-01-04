# Enum - Recon Enumeration Scripts

## Dependencies

- Python/PIP
- Shodan CLI
- nrich
- Subfinder
- jq
- Grayhatwarfare API key
- ViewDNS.info API key

## Installation

sudo chmod +x install.sh

sudo ./install.sh

Configure Shodan CLI and add Grayhatwarfare and ViewDNS.info API keys to config.ini

Comment out script feedback with '#' if writing results to a file

## Usage

### ./nslookup.sh [IP address]

Perform an nslookup on an domain name

### ./whois.sh [domain]

Perform a whois search on a IP address

### ./crt.sh [domain] (optional > [output file])

Pull domain names from SSL certificates using crt.sh ommitting the wildcard characters (*.)

### ./initial.sh [filename] [output file]

Scan for subdomains in a list of domains using Subfinder

### ./reverseiplookup.sh [IP address]

Find all sites hosted on a given server

### ./reversewhois.sh [domain]

Find domain names owned by an individual or company

### ./reversednslookup.sh [IP address]

View the reverse DNS entry for an IP address

### ./iteratehosts.sh [filename] (optional > [output file])

Resolve a list of hostnames from a file/list of domains or subdomains

### ./iterateips.sh [filename] (optional > [output file])

Resolve a list of IP addresses from a file/list of domains or subdomains, useful for using with the nrich.sh and shodan.sh scripts

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
