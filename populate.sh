#!/bin/bash
# script for population

set -o xtrace # debug

declare -a months

months=(January February March April May June July August September October November December) # its hardcoded :(
mdays=0 # number of days in a month

# option parser

while :; do
	case $1 in
		-h | --help)
			print_help
			exit 0;;
		-v | --verbose)
			set -o xtrace
			shift
			;;
		-d | --directory)
			directory="" # failsafe TODO
			if [ -n "2" ]; then
				directory=$(realpath $2)
				shift
				shift
			fi
			;;
		-y | --year)
			year=""
			if [ "$2" -ge 0 ]; then # tests if positive integer
				year=$2	
				shift
				shift
			fi
			;;
		--) # end of all options
			shift
			break
			;;
		-*) # invalid option
			printf >&2 "ERROR: Invalid flag '%s'\n\n" "$1"
			print_help
			exit 1
			;;
		*) # when there are no more options
			if [ -n "$1" ]; then
			year
			directory="$PWD/${year}"
			year="$1" # year
			month="$2" # TODO: change it

function print_help(){
	echo "hello world" # TODO
}

function get_mdays(){
	echo "helloworld" # to be removed TODO
	cal "$1" | xargs -n1 | tail -1
}
get_mdays $2 # TODO

function make_files(){
	echo "helloworld" # TODO
}

