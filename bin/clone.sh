#!/bin/bash

DEFAULT_INSTANCES=4

clone(){
	i=$1
	COMMAND=$2

	while [ $i -gt 0 ]; do
		adf
	done

}

# if first arg is number of instances
if [ ??? ]; then
	COMMAND=`echo $@ | cut -d " " -f 2-`
	clone $1 $COMMAND
# if no number of instances
elif [ "$#" -eq 3 ]; then
	clone $DEFAULT_INSTANCES $@
else
	echo "usage: clone [instances] <command>"
	echo "       runs command in background with given number of instances (4 by default)"
fi

