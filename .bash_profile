# I want pretty colors...
export CLICOLOR=1

# ...and command prompt
export PS1="\n\[\033[1;34m\]\w\[\033[0m\]$ "

# Git completion
if [ -s /usr/local/etc/bash_completion.d/ ] ; then source /usr/local/etc/bash_completion.d/git-completion.bash ; fi

# Aliases
if [ -s ~/.bash_aliases ] ; then source ~/.bash_aliases ; fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
