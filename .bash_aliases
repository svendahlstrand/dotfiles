alias ..='cd ..'
alias b='bundle'
alias be='bundle exec'
alias g='git'
alias l='ls'
alias ll='ls -alh'
alias mkdir='mkdir -p'
alias r='rails'
alias tlf='tail -f'
alias sv='supervision'
alias s='subl'

# command to jump directly to code directories with `c my_project`
c() { cd ~/code/$1; }
_c() {
  local cur
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"

  local tags=$(for t in `ls ~/code | \
                      awk '{print $1}'`; do echo ${t}; done)
  COMPREPLY=($(compgen -W "${tags}" $cur))
}

complete -F _c c