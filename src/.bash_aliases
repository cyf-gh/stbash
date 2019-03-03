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
alias gs='git status'
alias gc='git commit -m'

alias st_modify_name=$ST_RUN_SH'utils/modifyName.sh'
alias smn='st_modify_name'

alias st_modify_github=$ST_RUN_SH'utils/modifyGithub.sh'
alias smg='st_modify_github'

# type
alias ta='type -a'

# vim
alias sys_vim='/usr/bin/vim'
alias sys_vi='/usr/bin/vi'

# st
alias st_peek_vars='export | grep ST_'
alias spv='st_peek_vars'
alias st_peek_dirs='export | grep ST_DIR'
alias spd='st_peek_dirs'
alias st_peek_sys_instruction='alias | grep "alias sys_"'
alias spsys='st_peek_sys_instruction'

## fast
alias do='bash' # default bash
alias go='st_open'

alias gh='go '$ST_YOURGITHUB

alias st_version=$ST_RUN_SH'version.sh'