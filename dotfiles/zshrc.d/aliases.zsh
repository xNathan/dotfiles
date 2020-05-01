# add alias

alias pc='proxychains4'
alias setproxy='export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5h://127.0.0.1:7891'
alias unsetproxy='unset https_proxy; unset http_proxy; unset all_proxy;'

# tmux alias, copied from oh-my-zsh
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

function dotdrop() {
    (cd $HOME/.dotfiles && pipenv run ./dotdrop.sh $@)
}
alias dotgit="git -C $HOME/.dotfiles"
alias dotsync="dotgit pull && dotgit add -A && dotgit commit && dotgit push; dotdrop install"

if [[ "$(command -v nvim)" ]]; then
    alias v='nvim'
    alias vim='nvim'
fi

[[ "$(command -v bat)" ]] && alias cat="bat"
