# Add local, user and npm directories to path
export PATH=/usr/local/bin:$HOME/.bin:/usr/local/share/npm/bin:$PATH

# Git completion and prompt
if [ -s /usr/local/etc/bash_completion.d/ ] ; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
fi

# I want pretty colors...
export CLICOLOR=1

# ...and command prompt
export PS1="\n\[\033[1;34m\]\w\[\033[0m\]\$(__git_ps1)$ "

# Aliases
if [ -s ~/.bash_aliases ] ; then source ~/.bash_aliases ; fi

# Set editor
export EDITOR='subl -w'

# rbenv
eval "$(rbenv init -)"

# Set LC_CTYPE to work around this problem: http://mod16.org/hurfdurf/?p=189
export LC_CTYPE="en_US.UTF-8"
