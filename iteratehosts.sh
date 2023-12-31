#!/bin/bash
echo ""
echo "Resolving hosts..."
echo ""
while read p; do
  getent hosts $p | awk '{print $2}' | sort -u;
done < $1
echo ""
echo "Done"
