POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator ram time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

    echo "Creating a zgen save"

    # prezto options
    # zgen prezto editor key-bindings 'vi'
    zgen prezto prompt theme 'sorin'
    #zgen prezto prompt theme 'powerlevel9k'
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
