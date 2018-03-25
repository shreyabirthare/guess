#!/usr/bin/env bash

	

	echo Guess the number of files in the current directory!
	

	function ask {
	  echo Input a number:
	  read guess
	}
	

	number=$(ls | wc -l)
	

	ask
	

	while [[ $guess -ne $number ]]
	do
	  if [[ $guess -gt $number ]]
	  then echo "The number of files is less than $guess. Guess again!"
	  ask
	

	  elif [[ $guess -lt $number ]]
	  then echo "The number of files is greater than $guess. Guess again!"
	  ask
	

	  else [[ $guess -eq $number ]]
	  fi
	done
	

	echo "You guessed it!
	There are $guess files in the current directory.
	Congratulations!"
