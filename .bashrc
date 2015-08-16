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
alias sha1='openssl sha1'
alias grep='grep --color=auto'

# Bash history
shopt -s histappend
export HISTSIZE=5000
export HISTFILESIZE=250000
export HISTCONTROL=ignoredups
shopt -s cmdhist
PROMPT_COMMAND='history -a'

# Python development
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Functions

# Function to run pip to install or upgrade global (python) package
gpip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

