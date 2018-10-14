# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

    echo "Creating a zgen save"

    # prezto options
    # zgen prezto editor key-bindings 'vi'
    zgen prezto prompt theme 'sorin'
    zgen prezto syntax-highlighting color 'yes'
    zgen prezto utility:ls color 'yes'

    # prezto and modules
    zgen prezto
    zgen prezto archive
    zgen prezto git
    zgen prezto docker
    zgen prezto rsync
    zgen prezto directory
    zgen prezto history
    zgen prezto utility
    zgen prezto completion  # must be loaded after utility
    zgen prezto autosuggestions
    # zgen prezto tmux
    zgen prezto command-not-found
    zgen prezto fasd  # loaded after completion
    zgen prezto syntax-highlighting  # before prompt and history-substring-search
    zgen prezto history-substring-search
    zgen prezto prompt

  zgen save
fi

# Load all files from ~/zshrc.d directory
if [ -d $HOME/.zshrc.d ]; then
  for file in $HOME/.zshrc.d/*.zsh; do
    source $file
  done
fi

