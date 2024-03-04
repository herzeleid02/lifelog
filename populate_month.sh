#!/bin/sh

year=""
month=""

# parse options
while :; do
	case $1 in
		-h | --help)
			print_help
			exit 0
			;;
		-y | --year)
			if [ -n "$2" ]; then
				year=$2
				shift
				shift
			else
				echo "Invalid syntax"
				exit 1
			fi
			;;
		-m | --month)
			if [ -n "$2" ]; then
				month=$2
				shift
				shift
			else
				echo "Invalid syntax" # repeating myself again :(
				exit 1
			fi
			;;
		-*) # invalid option
			printf >&2 "ERROR: Invalid option '%s'\n\n" "$1"
			print_help
			exit 1
			;;
		--) # end of all options
			shift
			break
			;;
		*) # when there are no more options
			year=$(date +%Y)
			month=$(date +%m)
			break
	esac
done

print_help(){
	echo "helloworld" #TODO
}

main(){
	# the main program
	mdays=$(cal $month | xargs -n1 | tail -1)
	for i in $(seq $mdays); do
		printf "# $(date '+%d %B %Y, %A, Week %W')\n\n"
	done
}

main
