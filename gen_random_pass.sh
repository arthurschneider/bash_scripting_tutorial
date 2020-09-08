#!/bin/bash

DICTIONARY="/usr/share/dict/ogerman"
FILTERED_DICTIONARY="/home/$USER/Documents/filteres_ogerman"
MAX_LINES_FILE=0
SOME_RAND=0
PASSPHRASE=""


check_dictionary_exists() {
    if test ! -f $DICTIONARY ; then
        echo "FAIL : The german dictinory does not exist"
        exit -1
    fi
}

filter_the_file(){
    cat $DICTIONARY \
    | grep -v "'" \
    | grep -v "&" \
    | grep -Ev '^.{1,3}$' \
    | tr 'A-Z' 'a-z' \
    > $FILTERED_DICTIONARY
}

set_max_lines_of_file(){
    MAX_LINES_FILE=$(wc -l $FILTERED_DICTIONARY | cut -d" " -f1)
    echo "Current number of lines in the file are : $MAX_LINES_FILE"
}

define_rand_number_range_max_lines_list(){
    __SOME_RAND=$(shuf -i 1-$MAX_LINES_FILE -n1)
    echo $__SOME_RAND
}

get_word_by_rand_number(){
    __RAND_WORD=$(cat  $FILTERED_DICTIONARY | head -n $(($1+1)) | tail -n 1)
    echo $__RAND_WORD
}

concatenate_words_to_passphrase(){
    echo ""
    echo -e "These are the 10 random words:\n"
    for i in $(seq 10)
    do
        __RAND_NUMBER=$(define_rand_number_range_max_lines_list)
        __MY_WORD=$(get_word_by_rand_number $__RAND_NUMBER)
        echo $__MY_WORD
    done
    echo ""
}

check_dictionary_exists
filter_the_file
set_max_lines_of_file
concatenate_words_to_passphrase
