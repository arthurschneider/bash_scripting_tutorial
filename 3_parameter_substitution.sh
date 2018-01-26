#! /bin/bash

name="Abrahamowitsch"


echo
echo "Print variable name = "$name
echo "Print the length of variable with '\${#var}', lenght of name is " ${#name}
echo "To cut of part of a string use \${var#pattern} like this new 'name' = ${name#*a}"
echo "To cut more of a string use \${var##pattern} like this new 'name' = ${name##*a}"
echo "To cut of a string from start to pattern use \${var%pattern} like this new 'name' = ${name%a*}"
echo "To cut of a string from start to pattern but without the pattern part use \${var%%pattern} like this new 'name' = ${name%%a*}"

echo "To replace part of a string use \${var/find/replace} name = ${name/aha/tom}"
echo "To replace all occurrences of a string use \${var//find/replace} name = ${name//a/tom}"

surname=
echo
echo "Print surname variable which is not initialized but where default value ist set = "${surname:-'Schneider'}

echo
echo "Print surname variable again surname = "$surname
echo "You see it is still empty"

echo
echo "But with command ${var:=default} you can change the value when it was empty"
echo "Like this surname = "${surname:='Huberty'}

echo
echo "With the substitution ${var:+new} the value will still be empty if it was empty"
echo "But whe it was set before to a value you can use this substitution to a new value"
city=
echo
echo "Print variable 'city' which is in the moment empty city = ${city:+'Cologne'}"

city="Frechen"
echo
echo "Variable city was set before to a value, now the substitution city = ${city:+'Cologne'}"

abc="123"
efg=abc
echo
echo "To get a value of a variable which is stored as a string in other variable"
echo "You have to use \${!var}, so efg has abc in it and abc holds = ${!efg}"

echo
echo "When a variable is not set u can use \${var:?exception} to treat it like an exception"
echo " The script will stop afer that substitution, so here it is "${street:?'value was empty'}
