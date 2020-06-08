#!/usr/bin/env bash

function playgame {
	local files guess
	files=$(find . -depth 1 | wc -l)			# Number of Unix files in the directory
	# files=$(find . -depth 1 -type f| wc -l)	# Number of regular files

	while true
	do
		echo -n "Please enter your guess: "
		read guess

		if [[ $guess =~ ^[0-9]+$ ]]		# check if input is numeric
		then
			if [[ $guess -gt $files ]]			# guess > actual value
			then
				echo "Your guess is higher than the actual value. Please try again."
			elif [[ $guess -lt $files ]]		# guess < actual value
			then
				echo "Your guess is lower than the actual value. Please try again."
			elif [[ $guess -eq $files ]]		# guess = actual value
			then
				echo "Congratulations! Your guess is correct."
				break
			fi
		else
			echo "Invalid input. Only positive numeric values are accepted. Please try again."
		fi
	done
}

echo "Guess the number of files present in the current directory."
playgame
