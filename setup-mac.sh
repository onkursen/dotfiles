#!/bin/sh

set -x

echo "Setting up Onkur's preferred apps..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> "${HOME}/.zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> ${HOME}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Install tools
tools=(
  ccat
  coreutils
  ripgrep
)
brew install "${tools[@]}"

# Install casks
casks=(
  appcleaner
  flux
  iterm2
  kitty
  rectangle  # shortcuts: ~/Library/Preferences/com.knollsoft.Rectangle.plist
  sublime-text
  vlc
)
brew install --cask "${casks[@]}"

# Create symlink for Sublime Text
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl \
  /usr/local/bin/s

# Add zsh customizations
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone \
  https://github.com/zsh-users/zsh-syntax-highlighting \
  "${ZSH}/plugins/zsh-syntax-highlighting"
