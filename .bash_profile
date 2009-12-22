# I want pretty colors...
export CLICOLOR=1

# ...and command prompt
export PS1="\n\[\033[1;34m\]\w\[\033[0m\]$ "

# Git completion
if [ -s /usr/local/etc/bash_completion.d/ ] ; then source /usr/local/etc/bash_completion.d/git-completion.bash ; fi

# RVM
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

# Aliases
if [ -s ~/.bash_aliases ] ; then source ~/.bash_aliases ; fi