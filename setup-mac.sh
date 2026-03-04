#!/bin/sh

set -x

echo "Setting up Onkur's preferred apps..."

# Install Homebrew
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [[ -f "${HOME}/.zprofile" ]] && ! grep -q 'eval "\$\(\/opt\/homebrew\/bin\/brew shellenv zsh\)"' "${HOME}/.zprofile"; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> "${HOME}/.zprofile"
fi
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Install tools
tools=(
  ccat
  coreutils
  git
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
  # vlc
)
brew install --cask "${casks[@]}"

# Create symlink for Sublime Text
[[ -f "/usr/local/bin/s" ]] && \
  sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl \
  /usr/local/bin/s

# Add zsh customizations
if [[ ! -d "${ZSH:-$HOME/.oh-my-zsh}" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
if [[ ! -d "${ZSH}/plugins/zsh-syntax-highlighting" ]]; then
  git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting \
    "${ZSH}/plugins/zsh-syntax-highlighting"
fi

# Symlink all files from base/ to $HOME, backing up existing files first
BASE_DIR="$(git rev-parse --show-toplevel)/base"
for filename in $(ls -A "$BASE_DIR"); do
  target="${HOME}/$filename"
  # If the target exists and is not a symlink, then...
  if [[ -e "$target" && ! -L "$target" ]]; then
    echo "Backing up existing $target"
    mv "$target" "${target}.bak.$(date +%s)"
  fi
  # -f forces the removal of an existing destination file before creating the symlink.
  ln -sf "$BASE_DIR/$filename" "$target"
done
