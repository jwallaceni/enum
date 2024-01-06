#!/bin/bash
nmap -F -sV -iL $1 --script vuln -oN $2
