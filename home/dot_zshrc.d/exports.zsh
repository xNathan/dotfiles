export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'

export GOPATH=$HOME/go

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [[ "$(command -v nvim)" ]]; then
    export EDITOR=nvim
    export VISUAL=$EDITOR
fi
