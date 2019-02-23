# Welcome Message
ST_YOUR_NAME="曹逸凡"

echo -e '\033[40;37m'


fortune | cowsay -f tux

echo '----------------------------------------'
time=`date +今は%H時%M分%S秒でございます`

echo -e '\033[40;37m'$time

if [[ "$time" > "05:00:01" ]] && [[ "$time" < "11:30:00" ]]
then
    JP_WELCOME="ご機嫌よう、"
elif [[ "$time" > "17:30:01" ]] || [[ "$time" < "05:00:00" ]]
then
    JP_WELCOME="こんばんは、"
else 
    JP_WELCOME="こんにちは、"
fi

JP_WELCOME="\033[40;37m$JP_WELCOME$ST_YOUR_NAME 様。"


echo -e $JP_WELCOME
echo '----------------------------------------'
echo -e '\033[0m'

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
alias rm_clean=$ST_BASH'/_Delete_All_In_Deleted.sh'
alias rm=$ST_BASH'/rm.sh'
alias st_active=$ST_BASH'/_Active_All_Shell_Scripts.sh'
alias rs='source ~/.bash_profile'

alias my_github=$ST_BASH'/_Open_My_Github_Page.sh'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export TERM="xterm-color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

