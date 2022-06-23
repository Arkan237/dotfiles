#!/usr/bin/bash

FULLNAME=$(grep $USER /etc/passwd | cut -d ':' -f 5)

if [ "$FULLNAME" == "" ]; then
	echo $USER
else
	echo $FULLNAME
fi
