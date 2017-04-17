# Easier navigation saves time.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Shortcuts are nice.
alias b='bundle'
alias be='bundle exec'
alias d='cd ~/Desktop'
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

# Update homebrew and macOS.
alias update='brew update && brew upgrade && brew cleanup && softwareupdate -ia'

# Show current week number.
alias week='date +%V'

# Start a simple web server.
alias ws='python -m SimpleHTTPServer'

# US DNS
alias jump-to-us='sudo networksetup -setdnsservers Wi-Fi empty && sudo networksetup -setdnsservers Wi-Fi 185.37.37.37 185.37.39.39'
alias jump-home='sudo networksetup -setdnsservers Wi-Fi empty'

# Add "bundle exec" like behavior for npm
function npm-exec {
  "$(npm bin)"/$@
}

alias ne='npm-exec'

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
