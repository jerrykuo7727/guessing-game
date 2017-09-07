#!/usr/bin/env bash
# File: guessing-game.sh

function get_file_count {
  echo $(ls -l | grep ^- | wc -l)
}

echo "Please guess how many files are in the current directory: "
file_count=$(get_file_count)

read guess
while [[ $guess -ne $file_count ]]
do
  if [[ $guess -lt $file_count ]]
  then
    echo "Too low."
  elif [[ $guess -gt $file_count ]]
  then
    echo "Too high."
  else
    break
  fi

  read guess
done

echo "Correct. Congratulations!"
