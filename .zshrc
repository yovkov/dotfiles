fpath+=("$(brew --prefix)/share/zsh/site-functions")

[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(fzf --zsh)"
# Source fzf-git.sh
source ~/fzf-git.sh

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

autoload -U promptinit; promptinit
prompt pure

# Added by Windsurf
export PATH="/Users/petaryovkov/.codeium/windsurf/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Added by Windsurf
export PATH="/Users/yovkov/.codeium/windsurf/bin:$PATH"
