[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

[[ "$(command -v mise)" ]] && eval "$(mise activate zsh)"
[[ "$(command -v direnv)" ]] && eval "$(direnv hook zsh)"