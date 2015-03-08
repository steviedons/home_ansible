#!/bin/bash
# Script to create a ansible role directory structure
# usage: mkrole <role name>
if [[ -z $1 ]]; then
	echo "Please include a directory"
	exit 1
fi
ROLE=./roles/$1
echo "Create the role dir $1"
mkdir $ROLE
echo "Create all the directories"
mkdir $ROLE/tasks $ROLE/handlers $ROLE/templates $ROLE/files $ROLE/vars $ROLE/defaults $ROLE/meta
echo "Create main.yml files in the correct directories"
for dir in tasks handlers vars defaults meta;
do
	touch $ROLE/$dir/main.yml
	echo "# role:$1 directory:$dir" >> $ROLE/$dir/main.yml  
done
