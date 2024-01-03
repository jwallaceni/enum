#!/bin/bash
echo ""
echo "Resolving hosts from $1..."
echo ""
while read p; do
  getent hosts $p | awk '{print $2}' | sort -u;
done < $1
echo ""
echo "Done"
