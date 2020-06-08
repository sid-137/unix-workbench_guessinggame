#!/usr/bin/env bash

function compare {
	# Takes two arguments and compares their values
	if [[ $1 -gt $2 ]]
	then
		echo 2
	elif [[ $1 -lt $2 ]]
	then
		echo 1
	else
		echo 0
	fi
}

function playgame {
	# Takes user input; Prints to console.
	local files guess stat
	files=$(ls -1 | wc -l)		# Number of files in the directory

	while true
	do
		echo -n "Please enter your guess: "
		read guess
		stat=$(compare $guess $files)	# Compare the values (compare function)

		if [[ $stat -eq 2 ]]		# guess > actual val
		then
			echo "Your guess is higher than the actual value. Please try again."
		elif [[ $stat -eq 1 ]]		# guess < actual val
		then
			echo "Your guess is lower than the actual value. Please try again."
		elif [[ $stat -eq 0 ]]		# guess = actual value
		then
			echo "Congratulations! Your guess is correct."
			break
		fi
	done
}

echo "Guess the number of files present in the current directory."
playgame
