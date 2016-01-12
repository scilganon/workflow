#!/bin/bash

# repo file should be formatted as repo-apth on each line

REPOSFILE=$1
COMMAND()
{
	echo "echo 'Update repo:' $1 && git -C $1 fetch --all"
}

while read in; 	do eval $(COMMAND "$in"); done < $REPOSFILE
