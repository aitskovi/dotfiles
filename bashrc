# Enable colour support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrp='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# PS1 Prompt
PS1='\h:\W \u\[\e[33m\]$(__git_ps1 " (%s)")\[\e[m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=git

# Default Editors
export SVN_EDITOR=vim

# expand PATH to os161
export PATH=$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH
export PATH=/usr/share/smlnj/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export CVSROOT=~/cvsroot/cs350
