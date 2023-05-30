# Plugin: projen

# Aliases
alias pgjn='projen new'
alias pgjv='projen --version'

alias pj='npx projen'

alias pjv='pj --version'
alias pjb='pj build'

alias pjd='pj deploy'
alias pjdd='pj diff'
alias pjD='pj destroy'

alias pjU='pj projen:upgrade'

######################################################################
#<
#
# Function: pj_install()
#
#>
######################################################################
pj_install() {
  npm install -g projen
}

# Autocompletion
_projen_completion() {
  local completions
  completions=$(projen --completion "${words[@]}")
  reply=("${(ps:\n:)completions}")
}
compctl -K _projen_completion projen

# Initialize plugin
if (( $+commands[projen] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_projen" ]]; then
    projen --completion=zsh > "$ZSH_CACHE_DIR/completions/_projen"
    source "$ZSH_CACHE_DIR/completions/_projen"
  else
    source "$ZSH_CACHE_DIR/completions/_projen"
    (projen --completion=zsh > "$ZSH_CACHE_DIR/completions/_projen") &!
  fi
fi

