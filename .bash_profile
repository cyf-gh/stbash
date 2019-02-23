export PATH="/Applications/MacVim.app/Contents/bin:usr/local/webserver/mysql/bin:$PATH"

ST_BASH='~/Development/ShellCollection'

# Define alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='mvim'
alias vi='mvim'
alias es='vim ~/.bash_profile'
alias sys_rm='/bin/rm -i'
alias rm_clean=$ST_BASH'/_Delete_All_In_Deleted'
alias rm=$ST_BASH'/rm'
alias rs='source ~/.bash_profile'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export TERM="xterm-color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
