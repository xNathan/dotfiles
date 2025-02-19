export GOPATH=$HOME/go

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [[ "$(command -v nvim)" ]]; then
    export EDITOR=nvim
    export VISUAL=$EDITOR
fi
