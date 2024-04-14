fpath+=("$(brew --prefix)/share/zsh/site-functions")

[ -f .aliases ] && source .aliases

eval "$(zoxide init zsh)"

autoload -U promptinit; promptinit
prompt pure
