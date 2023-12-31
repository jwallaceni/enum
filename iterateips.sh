#!/bin/bash
echo ""
echo "Resolving IP addresses..."
echo ""
while read p; do
  (getent hosts $p | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])');
done < $1
echo ""
echo "Done"
