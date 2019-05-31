# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

# prezto and modules
zplug "modules/archive", from:prezto
zplug "modules/git", from:prezto
zplug "modules/docker", from:prezto
zplug "modules/rsync", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/history", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto  # must be loaded after utility
zplug "modules/autosuggestions", from:prezto
zplug "modules/command-not-found", from:prezto
zplug "modules/fasd", from:prezto  # loaded after completion
zplug "modules/syntax-highlighting", from:prezto  # before prompt and history-substring-search
zplug "modules/history-substring-search", from:prezto
zplug "modules/prompt", from:prezto

zstyle ":prezto:module:editor" key-bindings "vi"
zstyle ":prezto:module:prompt" theme "sorin"
zstyle ":prezto:module:syntax-highlighting" color "yes"
zstyle ":prezto:module:utility:ls" color "yes"

# Other plugins
zplug "plugins/tmux",   from:oh-my-zsh

# Load theme file
zplug "dracula/zsh", as:theme

# Load local zsh
zplug "~/.zshrc.d", from:local, defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
