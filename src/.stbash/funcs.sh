#!/bin/bash

st_print_info() {
    echo -e "INFO\t $1 "
}
export -f st_print_info

st_print_test() {
    echo -e "ST_TEST\t $1 "
}
export -f st_print_test