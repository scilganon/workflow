#/bin/sh

git log --since=$(date +%Y-%m-%d --date='1 days ago') --until=$(date +%Y-%m-%d) --numstat --oneline | awk '{print $1 " " $2}' | grep -o -P "\d+\s+\d+" | awk '{print $1-$2}' | awk '{s+=$1} END {print s}'
