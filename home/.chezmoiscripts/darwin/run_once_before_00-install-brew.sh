#!/bin/bash
export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH

if command -v brew >/dev/null 2>&1; then
    echo "Homebrew installed"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle --no-lock --force --file=/dev/stdin <<EOF
tap "homebrew/bundle"

brew "bat"
brew "chezmoi"
brew "coreutils"
brew "direnv"
brew "docker-compose"
brew "fd"
brew "lsd"
brew "fzf"
brew "neovim"
brew "tmux"
brew "htop"
brew "ripgrep"
brew "mise"
brew "rsync"
brew "tree"
brew "watch"
brew "gnupg"
brew "git"
brew "pinentry-mac"
brew "wget"
brew "starship"
brew "zoxide"

# python requirements
brew "openssl@3"
brew "readline"
brew "sqlite"
brew "tcl-tk"
brew "xz"
brew "zlib"

cask "aldente"
cask "docker"
cask "font-hack-nerd-font"
cask "font-sarasa-gothic"
cask "firefox"
cask "hiddenbar"
cask "kitty"
cask "maccy"
cask "mos"
cask "raycast"
cask "rectangle"
cask "shottr"
cask "squirrel"
cask "karabiner-elements"
cask "visual-studio-code"

vscode "eamodio.gitlens"
vscode "EditorConfig.EditorConfig"
vscode "golang.go"
vscode "ms-azuretools.vscode-docker"
vscode "ms-python.python"
vscode "ms-python.vscode-pylance"
vscode "vscodevim.vim"
vscode "PKief.material-icon-theme"
vscode "zhuangtongfa.material-theme"
EOF


$(brew --prefix)/opt/fzf/install --key-bindings --completion --no-update-rc
