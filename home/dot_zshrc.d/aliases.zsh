alias pc='proxychains4'
alias setproxy='export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5h://127.0.0.1:7891'
alias unsetproxy='unset https_proxy; unset http_proxy; unset all_proxy;'

alias ssh="TERM=xterm-256color $(which ssh)"

if [[ "$(command -v nvim)" ]]; then
    alias v='nvim'
    alias vim='nvim'
fi

[[ "$(command -v bat)" ]] && alias cat="bat"
[[ "$(command -v lsd)" ]] && alias ls="lsd"
