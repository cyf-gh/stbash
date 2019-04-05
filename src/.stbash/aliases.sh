#!/bin/bash

#------------------------------------------------------
# platform recognization
export ST_SYS_GEN="unknown"

uname | grep Darwin > $ST_BLACKHOLE # macOS
if [ $? = 0 ];then 
    ST_SYS_GEN="macos"
    shopt -s expand_aliases
    source ~/.stbash/mac.sh
fi

uname | grep Linux > $ST_BLACKHOLE # Linux
if [ $? = 0 ];then
shopt -s expand_aliases
source ~/.stbash/linux.sh
    ST_SYS_GEN="linux"
fi

uname | grep MINGW > $ST_BLACKHOLE # msys
if [ $? = 0 ];then
    ST_SYS_GEN="msys"
    shopt -s expand_aliases
    source ~/.stbash/msys.sh
fi
#------------------------------------------------------

# aliases
if [ -f ~/.bash_aliases ]; then
    shopt -s expand_aliases
    source ~/.bash_aliases
fi
