# Easier navigation saves time.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Shortcuts are nice.
alias b='bundle'
alias be='bundle exec'
alias e='atom'
alias g='git'
alias l='ls'
alias sv='supervision'

# List everything with human readable sizes.
alias ll='ls -alh'

# Make aliases available to sudo.
alias sudo='sudo '

# Show private and public IP address.
alias ip='echo -n "Private IP address: " && ipconfig getifaddr en0 && echo -n "Public IP address: " && dig +short myip.opendns.com @resolver1.opendns.com'

# Update homebrew and OS X.
alias update='brew update && brew upgrade --all && brew cleanup && softwareupdate -ia'

# Show current week number.
alias week='date +%V'

# Start a simple web server.
alias ws='python -m SimpleHTTPServer'

# Change directory to code projects with autocompletion.
#
# Usage:
# $ c my_project
c() { cd ~/code/$1; }
_c() {
  local cur=${COMP_WORDS[COMP_CWORD]}

  COMPREPLY=($(cd ~/code; compgen -o dirnames -S '/' -f -- $cur))
}

complete -o nospace -F _c c
