#!/bin/bash

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# rm
alias sys_rm='/bin/rm -i'
alias rm_clean=$ST_RUN_SH'utils/emptyRecycle.sh'
alias rm=$ST_RUN_SH'rm.sh'

# edit & restart bash_profile
alias es='vim ~/.bash_profile'
alias rs='source ~/.bash_profile'

# grep
alias grep='grep --color=auto'

# git
alias ga='git add -A'
alias gs='git status'
alias gc='git commit -m'
alias gri=$ST_RUN_SH'utils/updateGitIgnore.sh'

alias st_modify_name=$ST_RUN_SH'utils/modifyName.sh'
alias smn='st_modify_name'

alias st_modify_github=$ST_RUN_SH'utils/modifyGithub.sh'
alias smg='st_modify_github'

# type
alias ta='type -a'

# vim
alias sys_vim='/usr/bin/vim'
alias sys_vi='/usr/bin/vi'

## fast
alias do='bash' # default bash
alias go='st_open'
alias vb='od'
alias gh='go '$ST_YOURGITHUB

function goWeb() {
    go "https://www.$1"
}

function github_search() {
    goo "github.com/search?q=$1"
}
alias goo='goWeb'
alias gg='goo google.com'
alias bili='goo bilibili.com'
alias ghs='github_search'

# st
alias st_peek_all_cli='cat ~/.bash_aliases'
function stHelp() {
    if [ ! -n "$1" ]; then
        echo -e "\t[-c]\tShow all command-line interfaces."    
        echo -e "\t[-v]\tShow current ppbash version."
        return 
    fi
    if [ $1 == "-c" ]; then
        st_peek_all_cli
    elif [ $1 == "-v" ]; then
        echo $ST_VERSION
    fi
}
alias st_help='stHelp'
alias st_peek_vars='export | grep ST_'
alias spv='st_peek_vars'
alias st_peek_dirs='export | grep ST_DIR'
alias spd='st_peek_dirs'
alias st_peek_sys_instruction='alias | grep "alias sys_"'
alias spsys='st_peek_sys_instruction'

alias pl='swipl'
alias rhs='runhaskell'
alias hs='ghci'
