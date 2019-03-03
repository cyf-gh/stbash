#!/bin/bash

#------------------------------------------------------
# var declarations
    # st
    export ST_BASH=$HOME'/.stbash/'
    export ST_DIR_DUSTBIN=$HOME'/.deleted/'
    
    export ST_FILE_YOURNAME=$ST_BASH"dat/yourname.txt"
    export ST_FILE_YOURGITHUB=$ST_BASH"dat/github.txt"
    export ST_FILE_VERSION=$ST_BASH"dat/version.txt"

    export ST_YOURNAME=`cat $ST_FILE_YOURNAME`
    export ST_YOURGITHUB=`cat $ST_FILE_YOURGITHUB`
    export ST_VERSION=`cat $ST_FILE_VERSION`

    export ST_BLACKHOLE='/dev/null'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS='Exfxcxdxbxegedabagacad'

export TERM="xterm-color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export PATH="/Applications/MacVim.app/Contents/bin:usr/local/webserver/mysql/bin:$PATH"
#------------------------------------------------------

# export all st functions
source $ST_BASH"funcs.sh"

# export all aliases to source shell
source $ST_BASH"allaliases.sh"

export ST_INCLUDE_ALIASE=". $ST_BASH"allaliases.sh""

# welcome
bash ~/.stbash/welcome.sh