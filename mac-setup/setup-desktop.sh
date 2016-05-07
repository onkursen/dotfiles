# Install Mac applications through brew cask
brew tap 'caskroom/cask'
brew install 'brew-cask'

# General-use apps for functioning setup
brew cask install evernote
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install keepassx
brew cask install slack
brew cask install spectacle

# Add-ons
brew cask install appcleaner
brew cask install google-drive
# brew cask install media-converter
brew cask install skype
brew cask install vlc

# Dev tools
brew cask install iterm2
brew cask install sublime-text
# brew cask install mactex

brew cask cleanup

# Symlink for Sublime Text
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/s
