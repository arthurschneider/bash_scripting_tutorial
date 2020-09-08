#! /bin/bash

#############################################################
#############################################################

# if statement

if test $# -ne 2; then
  echo "You should pass two params to this script"
  exit 1
else
  echo "Your first parameter = $1 and your second was $2 "
fi


#############################################################
#############################################################

# case statement

for i do
  case "$i" in
    -*) opt="$opt $i";;
    * ) dat="$dat $i";;
  esac
done

echo "Options: $opt"
echo "Values: $dat "


#############################################################
#############################################################

# for loop
echo
echo "The for loop"
for i in a b c; do echo $i; done

# reads from file and prints it
for i in $(cat example.txt); do echo $i; done

#############################################################
#############################################################

# while loop

i=1
echo
echo "The while loop"
while test $i -le 5; do
  echo $i
  i=$[i+1]
done


#############################################################
#############################################################

# until loop
j=1

echo
echo "The until loop"

until test $j -gt 5; do
  echo "$j"
  j=$[j+1]
done
