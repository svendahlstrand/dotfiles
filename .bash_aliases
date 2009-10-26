# cd
alias ..='cd ..'
 
# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'
 
# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
 
# rails
alias sc='script/console'
alias ss='unicorn_rails'
alias sg='script/generate'
alias a='autotest -q'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold --haml --shoulda'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'