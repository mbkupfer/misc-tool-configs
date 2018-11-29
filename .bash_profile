# ENVIRONMENT VARIABLES

# add my ~/bin dir to path
PATH=$PATH:~/bin
PATH=$PATH:~/Library/Python/3.7/bin
export PATH

# simplify prompt and add a colored git branch name if in a git repo
# the parse_git_branch function is defined below
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[0m\] \$ "

# enable color 
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# ALIASES

alias python='python3'
alias pip='pip3'
alias idle='python -m idlelib.idle'
alias activate='source venv/bin/activate'
alias ll='ls -lh'

# save me from myself. 
# Use '\' to run command w/out prompt
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

# FUNCTIONS

# make and cd into a directory as same time
mkcdir(){
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# add git branch name in prompt when inside a git repo
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# man commands
# http://scriptingosx.com/2017/04/on-viewing-man-pages/

function preman() {
  man -t $1 | open -f -a "Preview"
}

function xmanpage() {
	open x-man-page://$@
}

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
