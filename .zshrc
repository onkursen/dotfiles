# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Themes located in ~/.oh-my-zsh/themes/
ZSH_THEME="fino-time"

# oh-my-zsh plugins located in ~/.oh-my-zsh/plugins/
plugins=(osx git sublime python npm emacs brew heroku)

source $ZSH/oh-my-zsh.sh
source ~/utils/z.sh
source ~/utils/aliases.sh

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Fixes rvm and zsh issue
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Customization for Heroku and rvm
export PATH=/usr/local/heroku/bin:\
/usr/local/bin:\
$PATH:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/opt/X11/bin:\
$HOME/.rvm/bin