# PS1 Prompt
PS1='\h:\W \u\[\e[33m\]$(__git_ps1 " (%s)")\[\e[m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=git

# Editor Aliases
alias v="vim"
alias xcode="open *.xcodeproj"

# Git Aliases
alias gs="git status -sb"
alias gl="git log"
alias gb="git branch"
alias gd="git diff"
alias gc="git checkout"
alias gf="git fetch --all"
alias gri="git rebase -i"
alias gr="git rebase"
alias gpo="git push origin"

# Default Editors
export SVN_EDITOR=vim
