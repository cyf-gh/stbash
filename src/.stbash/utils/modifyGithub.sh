#!/bin/bash

if [ -n "$1" ] ;then
    echo $1 > $ST_FILE_YOURGITHUB
    st_print_info "New github index: "$1
fi
