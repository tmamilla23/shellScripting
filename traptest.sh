#!/bin/bash

####################
# Author: Tejaswi Mamilla
# Date: 08/12/22023
# To test trap, sleep commands
# Version : v1
####################

set -x

ctrlc_count=0

# This function counts the number of control c
 
function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [$ctrlc_count eq 1]; then
		echo "first time no ctrlc !"
	elif [$ctrlc_count eq 2]; then
		echo "one more time script will exist !!"
        else
		echo "script will exist now !!!"
                exit
        fi	
}

trap no_ctrlc SIGINT

while true 
do
	echo "sleeping"
	sleep 10
	echo "sleeping again"
	sleep 10
done


