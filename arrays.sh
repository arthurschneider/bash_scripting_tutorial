#! /bin/bash

fruits=()  #declares an empty array
fruits[0]='apple' # initiate the array with values
fruits[1]='banana'
fruits[2]='melon'

animals=('dog','cat','rabbit') # declares and initializes an array

# Prints an element of an array
echo "Print first element of fruits "${fruits[0]}
echo "Print last element of fruits "${fruits[2]}

echo
echo "What will happen? When we try to print a not defined element of an array?"
echo "fruits[3] = "${fruits[3]}
echo "return vale of last command = "$?
echo "WTF? why it is true? Did I something wrong?"

# Prints whole array
echo
echo "To print whole array first posibility ${animals}"
echo
echo "To print whole array second posibility ${animals[@]}"

######################################################################
######################################################################

# Assoziative arrays

declare -A cars                 #you need to call declare or array will not work properly
cars[ford]=mustang
cars[suzuki]=alto
echo
echo "Prints first element of an assoziative array  = ${cars[ford]}"

declare -A games
games=( [xbox]=halo [ps4]=killzone )

echo
echo "Prints whole assoziative array '${games[@]}'"
echo "Beware: prints them in reverse order"
echo
echo "Try to print whole assoziative array the wrong way'${games}'"


#----------------------------------------------------------------------

mapfile textArray = < example.txt

echo
echo "Reads a textfile to an assoziative array and prints its conntent'${textArray[@]}'"
echo
echo "Reads a textfile to an assoziative array and prints first line'${textArray[0]}'"

