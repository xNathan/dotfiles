#!/bin/sh
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#Enable key repeat in VSCodeVim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# Or enable globally
# defaults write -g ApplePressAndHoldEnabled -bool false

# Disable rearrange workspace
defaults write com.apple.dock "mru-spaces" -bool "false"
