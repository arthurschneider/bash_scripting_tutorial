#! /bin/bash

#Delete variable value
mynumber=

#while loop if variable is empty
while [ -z "$mynumber" ]; do

  echo -n "Please enter a number: "
  # reads input from console
  read mynumber

  #check if number contains only numbers, minus and spaces and it is not empty
  mynumber=${mynumber##*[^0-9,' ',-]*}

  if [ -z "$mynumber" ]; then
    echo "Wrong input, please repeat your entry! "
  fi
done
echo "Your input was $mynumber"

