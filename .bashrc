#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim="nvim"

# Color codes
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
MAGENTA='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
WHITE='\[\033[0;37m\]'
RESET='\[\033[0m\]'

export PS1="${GREEN}\u${WHITE}@${BLUE}\h${WHITE}:${YELLOW}\w${WHITE}\$ ${RESET}"


# KeyMaps
alias ll='ls -la'
alias la='ls -a'
alias gs='git status'
alias gp='git pull'
alias gd='git diff'
alias ..='cd ..'
alias ...='cd ../..'

# Increase history size
HISTSIZE=10000
HISTFILESIZE=20000

# Avoid duplicate entries
HISTCONTROL=ignoredups:erasedups

# Append to the history file, don't overwrite it
shopt -s histappend

HISTTIMEFORMAT="%d/%m/%y %T "

mkcd () {
  mkdir -p "$1" && cd "$1"
}



# Function to parse Git branch
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

# Function to show the current directory name
parse_directory() {
  basename "$PWD"
}

# Function to show the timestamp
show_timestamp() {
  if [ "$PWD" == "$HOME" ]; then
    # Show current time in home directory
    date "+ %m-%d %H:%M"
  else
    # Show last modified time of .bashrc in other directories
    date "+ %m-%d %H:%M"
  fi
}

# Minimal PS1 prompt: username, current folder name, Git branch on one line, timestamp on the next line, input on the next line
export PS1="\[\033[01;32m\]\u \[\033[01;34m\]\$(parse_directory) \[\033[01;36m\]\$(parse_git_branch)\[\033[00m\]\[\033[01;33m\]\$(show_timestamp)\[\033[00m\]\n\$ "




# Add these lines to your .bashrc
# Enable color support for ls and grep
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

fastfetch
