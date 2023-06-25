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

alias pja='pj && pjb && pjdd && pjd'
alias pjA='pjD && pja'

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
