#!/bin/bash
# script for population

set -o xtrace # debug

declare -a months

year="$1" # year
month="$2" # TODO: change it
months=(January February March April May June July August September October November December) # its hardcoded :(
mdays=0 # number of days in a month
directory=''



if [ -z $1 ]; then
	year=$(date +%Y)
fi

if [ -z

function get_mdays(){
	echo "helloworld" # to be removed TODO
	cal "$1" | xargs -n1 | tail -1
}
get_mdays $2 # TODO

function make_files(){
	echo "helloworld" # TODO
}

