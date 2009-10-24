# Set paths for MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# With this ruby-bindings installed with ports works with rvm
export RUBYLIB=/opt/local/lib/ruby/site_ruby/1.8:/opt/local/lib/ruby/site_ruby/1.8/i686-darwin10:/opt/local/lib/ruby/site_ruby:/opt/local/lib/ruby/vendor_ruby/1.8:/opt/local/lib/ruby/vendor_ruby/1.8/i686-darwin10:/opt/local/lib/ruby/vendor_ruby:/opt/local/lib/ruby/1.8:/opt/local/lib/ruby/1.8/i686-darwin10

# I want pretty colors...
export CLICOLOR=1

# ...and command prompt
export PS1="\n\[\033[1;34m\]\w\[\033[0m\]$ "

# Git autocomplete
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

# RVM
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi