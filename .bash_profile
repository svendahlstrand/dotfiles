# Add user and npm bin directories to path
export PATH=/usr/local/sbin:$PATH

# Git completion and prompt
if [ -s /usr/local/etc/bash_completion.d/ ] ; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
fi

# Bash completion

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# I want pretty colors...
export CLICOLOR=1

# ...and command prompt...
ps1="\n\[\033[1;34m\]\w\[\033[0m\]"

# ...maybe with git support...
if [ -n "${GIT_PS1_SHOWDIRTYSTATE+x}" ] ; then
  ps1="\n\[\033[1;34m\]\w\[\033[0m\]\$(__git_ps1)"
fi

# ...definitely with $
export PS1="${ps1}$ "

# Aliases
if [ -s ~/.bash_aliases ] ; then source ~/.bash_aliases ; fi

# Set editor
export EDITOR='nova -w'

# Initialize rbenv
if hash rbenv 2>/dev/null ; then
  eval "$(rbenv init -)"
fi

# Disable homebrew calling home
export HOMEBREW_NO_ANALYTICS=1

# Set LANG, LC_ALL and LC_CTYPE to work around a couple of problems:
# * http://mod16.org/hurfdurf/?p=189
# * https://stackoverflow.com/questions/11540815/how-to-change-the-language-of-my-git
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';
