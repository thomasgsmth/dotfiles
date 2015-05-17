# if not an interactive shell, skip
if [ -z "$PS1" ]; then
    return
fi

# Mac OS X specific configuration
if [ $(uname -s) = "Darwin" ]; then
    source ~/.darwin_bashrc
fi

# Aliases

alias ls='ls -F'
alias ll='ls -AFlth'
alias wifi="networksetup -setairportpower en0"
alias bt="/usr/local/bin/blueutil power"
alias sha1='openssl sha1'
alias grep='grep --color=auto'

# Bash history
shopt -s histappend
export HISTSIZE=5000
export HISTFILESIZE=250000
export HISTCONTROL=ignoredups
shopt -s cmdhist
PROMPT_COMMAND='history -a'

# Functions

# Open man page as a pdf in Preview
pman() {
    man -t $@ | open -f -a /Applications/Preview.app
}