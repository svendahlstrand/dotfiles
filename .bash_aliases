# Easier navigation saves time.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Shortcuts are nice.
alias b='bundle'
alias be='bundle exec'
alias d='cd ~/Desktop'
alias e='nova'
alias g='git'
alias l='ls'
alias sv='supervision'

# List everything with human readable sizes.
alias ll='ls -alh'

# Make aliases available to sudo.
alias sudo='sudo '

# Show private and public IP address.
alias ip='echo -n "Private IP address: " && ipconfig getifaddr en0 && echo -n "Public IP address: " && curl https://am.i.mullvad.net/ip'

# Update homebrew and macOS.
alias update='brew update && brew upgrade && brew cleanup && softwareupdate -ia'

# Show current week number.
alias week='date +%V'

# Start a simple web server.
alias ws='ruby -run -e httpd . -p 80'

# US DNS
alias jump-to-us='sudo networksetup -setdnsservers Wi-Fi empty && sudo networksetup -setdnsservers Wi-Fi 185.37.37.37 185.37.39.39 && security find-generic-password -s unlocator -w | xargs curl -L'
alias jump-home='sudo networksetup -setdnsservers Wi-Fi empty && sudo networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1'

# HTTPS alias for HTTPie
alias https='http --default-scheme=https'

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
