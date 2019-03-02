#!/bin/sh 

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# rm
alias sys_rm='/bin/rm -i'
alias rm_clean=$ST_BASH'utils/emptyRecycle.sh'
alias rm=$ST_BASH'rm.sh'

# edit & restart bash_profile
alias es='vim ~/.bash_profile'
alias rs='source ~/.bash_profile'

# grep
alias grep='grep --color=auto'

# git
alias gs='git status'
alias gc='git commit -m'

# st
alias st_peek_vars='export | grep ST_'
alias spv='st_peek_vars'
alias st_peek_dirs='export | grep ST_DIR'
alias spd='st_peek_dirs'

alias st_modify_name=$ST_BASH'utils/modifyName.sh'
alias smn='st_modify_name'

alias st_modify_github=$ST_BASH'utils/modifyGithub.sh'
alias smg='st_modify_github'

# type
alias ta='type -a'

alias go='st_open'
alias gh=$ST_BASH'utils/openGithub.sh'

alias st_version=$ST_BASH'version.sh'