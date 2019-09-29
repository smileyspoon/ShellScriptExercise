#!/bin/bash

ACTION=${1:-launch}

if [ -z "$1" ]
	then
		echo "No arcument suplied, default actions is:  $ACTION"
	else
		echo "Initiating $ACTION."
fi
	
