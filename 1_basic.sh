#! /bin/sh

# The first line should be always a shebang
# And it tells which shell should be used to interpret this script



# Output
# to output something from the script use echo command
echo "Hello world!"

# to output the filename of this script
echo
echo "This file is called $0"

# to output the PID of this prozess
# when a script is launched everytime a new shell will be opend and the script will be executed in
# this seperate shell
echo
echo "The PID of the actual shell = $$"

# to out put return value of last command
test 20 -eq 21;
echo "Is 20 equalt to 21 ? Answer $?" # prints 1 --beware 0 is true 1 or anything else is false

# to output PID of last started backgroundprocess
echo
echo "The PID of last started background process = $!"

#to output the total amount of input parameters of this script
echo
echo "Total amount of input parameters = $#"

# to output first and second parameter given to this script
# to see the result call the script with ./basic.sh a b
echo
echo "First argument  = $1 and the second argument = $2"

# to output all arguments
echo
echo "All arguments passed to this script = $@"
echo "OR"
echo "All arguments passed to this script = $*"
