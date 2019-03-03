#!/bin/bash

if [ -n "$1" ] ;then
    echo $1 > $ST_FILE_YOURNAME
    st_print_info "New name: "$1
fi
