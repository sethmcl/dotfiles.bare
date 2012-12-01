# bash completion for git
GIT_COMPLETION_PATH=/etc/bash_completion.d/git
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin

export SVN_EDITOR=vim
export EDITOR=/usr/bin/vim
export PS1=" \[$(tput bold)\]\[$(tput setaf 4)\]\u\[$(tput setaf 6)\]@\h \[$(tput setaf 2)\]\w\[$(tput setaf 7)\] \[$(tput sgr0)\]"
export TERM="xterm-256color"
