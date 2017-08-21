#!/bin/sh

ask_to_install () {
  read -p "Install $1? " -r
  if [[ $REPLY =~ ^[Yy]{0,1}$ ]]
  then
      brew cask install $1
  else
      echo "Skipping $1."
  fi
}

# Install Mac applications through brew cask
brew tap 'caskroom/cask'
brew install 'brew-cask'

# Essential apps
brew cask install appcleaner
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle
brew cask install sublime-text
brew cask install vlc

# Optional apps
ask_to_install evernote
ask_to_install google-drive
ask_to_install mactex
ask_to_install media-converter
ask_to_install skype

brew cask cleanup

# Symlink for Sublime Text
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl \
  /usr/local/bin/s
