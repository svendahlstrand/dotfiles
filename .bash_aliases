alias ..='cd ..'
alias b='bundle'
alias be='bundle exec'
alias e='atom'
alias g='git'
alias l='ls'
alias ll='ls -alh'
alias mkdir='mkdir -p'
alias sv='supervision'
alias ws='python -m SimpleHTTPServer'

# command to jump directly to code directories with `c my_project`
c() { cd ~/code/$1; }
_c() {
  local cur=${COMP_WORDS[COMP_CWORD]}

  COMPREPLY=($(cd ~/code; compgen -o dirnames -S '/' -f -- $cur))
}

complete -o nospace -F _c c
