export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export GOPATH=$HOME/go

export PATH="$HOME/.local/bin:$PATH"

if [[ "$(command -v nvim)" ]]; then
    export EDITOR=nvim
    export VISUAL=$EDITOR
fi
