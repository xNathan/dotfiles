# add export

[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export GOPATH=$HOME/go