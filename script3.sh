#!/bin/bash

ACTION=${1}
version="1.0.1"

function show_version() {
	echo $version

}


function delete_file() {

	rm "${1}-12345"

}


function create_file() {

	touch "${1}-12345"
}

function display_help() {

	#the two EOF below are tags inputing all the lines of the text in betwen the two EOF tags
	cat << EOF
	Usage: ${0} {-v|--version-d|--delete|-c|--create|-h|--help} <filename>

	OPTIONS:
		-v | --version shows version of this code
		-d | --delete delete a file
		-c | --create Create a new file
		-h | --help Display the command help

	Examples:
		Show file version
			$ ${0} -v
		Detele a new file
			$ ${0} -d foo.txt
		Create a new file:
			$ ${0} -c foo.txt		

		Display help:
			$ ${0} -h
EOF

}


case "$ACTION" in
	#| is means or so it means -h or --help below
	-h|--help)
		display_help
		;;
	-c|--create)
		create_file "${2:-server}"
		;;
	-d|--delete)
		delete_file "${2:-server}"
		;;

	-v|--version)
		show_version		
		;;
		*)
	echo "Usage ${0} {-c|-h}"
	exit 1
#esac means end of case
esac
