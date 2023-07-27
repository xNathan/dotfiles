#!/bin/bash

if command -v brew >/dev/null 2>&1; then
    echo "Homebrew installed"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle --no-lock --file=/dev/stdin <<EOF
tap "homebrew/bundle"
tap "homebrew/cask-fonts"

brew "bat"
brew "chezmoi"
brew "coreutils"
brew "direnv"
brew "docker-compose"
brew "fd"
brew "lsd"
brew "neovim"
brew "tmux"
brew "ripgrep"
brew "rtx"
brew "tree"
brew "watch"
brew "gnupg"
brew "git"
brew "pinentry-mac"

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
cask "hiddenbar"
cask "kitty"
cask "maccy"
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
