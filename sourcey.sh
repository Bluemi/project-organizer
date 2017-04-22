#!/bin/bash

add-bug() {
	local name=""
	while [[ -z $name ]] || [[ -d $DOC_PATH/$name ]]
	do
		printf 'Enter name> '
		read name
	done
		
	mkdir $DOC_PATH/$name
	echo "Adding bug '$name'"
	echo 'bug' > "$DOC_PATH/$name/type"
}

add-sol() {
	local name=""
	while [[ -z $name ]] || [[ -d $DOC_PATH/$name ]]
	do
		printf 'Enter name> '
		read name
	done
		
	mkdir $DOC_PATH/$name
	echo "Adding solution '$name'"
	echo 'sol' > "$DOC_PATH/$name/type"
}

add-pln() {
	local name=""
	while [[ -z $name ]] || [[ -d $DOC_PATH/$name ]]
	do
		printf 'Enter name> '
		read name
	done
		
	mkdir $DOC_PATH/$name
	echo "Adding plan '$name'"
	echo 'pln' > "$DOC_PATH/$name/type"
}

export DOC_PATH="$PWD"
