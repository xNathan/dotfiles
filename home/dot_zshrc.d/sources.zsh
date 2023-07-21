[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

[[ "$(command -v rtx)" ]] && eval "$(rtx activate zsh)"
[[ "$(command -v direnv)" ]] && eval "$(direnv hook zsh)"