# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/petaryovkov/.zsh/completions:"* ]]; then export FPATH="/Users/petaryovkov/.zsh/completions:$FPATH"; fi
fpath+=("$(brew --prefix)/share/zsh/site-functions")

[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"
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


# Herd injected PHP binary.
export PATH="/Users/petaryovkov/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/petaryovkov/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/petaryovkov/Library/Application Support/Herd/config/php/74/"

# Created by `pipx` on 2024-11-22 08:54:39
export PATH="$PATH:/Users/petaryovkov/.local/bin"
. "/Users/petaryovkov/.deno/env"
# Added by Windsurf
export PATH="/Users/petaryovkov/.codeium/windsurf/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
