# TABLE OF CONTENTS
# -------------------------
# ENVIRONMENT_VARIABLES 
# PATH
# PROMPT
# ALIASES
# FUNCTIONS
# MISC
# ------------------------


# ENVIRONMENT_VARIABLES
export FLASK_ENV="development" 
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# PATH
PATH=$PATH:~/bin
PATH=$PATH:~/Library/Python/3.7/bin
PATH=$PATH:/usr/local/bin/code #vscode
PATH=/Applications/MacVim.app/Contents/bin:$PATH
export PATH

# PROMPT
# parse_git_branch (defined below) will show a git branch if one is there
PS1="\u@\h \w \[\033[32m\]\$(parse_git_branch)\[\033[0m\]$ "

# ALIASES
alias python='python3'
alias pip='pip3'
alias idle='python -m idlelib.idle'
alias activate='source venv/bin/activate'
alias ls='ls -Lho'
alias rmraf='rm -rf'

# FUNCTIONS

# make and cd into a directory as same time
mkcdir(){
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# add git branch name in prompt when inside a git repo
parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# man commands
# http://scriptingosx.com/2017/04/on-viewing-man-pages/

preman() {
  man -t $1 | open -f -a "Preview"
}

xmanpage() {
	open x-man-page://$@
}

# Open profile and then source file
edit_profile(){
  vim ~/.bash_profile && source $_
}


# MISC 
# git autocompletion
source ~/.git-completion.bash

# NVM poluting my bash_profile!
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# iterm also poluting my bash_profile! 
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

