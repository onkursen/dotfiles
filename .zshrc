# -----------------------
# OH-MY-ZSH CONFIGURATION
# -----------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Themes located in ~/.oh-my-zsh/themes/
ZSH_THEME="onkursen"

# oh-my-zsh plugins located in ~/.oh-my-zsh/plugins/
plugins=()

# -------
# EXPORTS
# -------

export SHELL_CONFIG="zshrc"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Customization for Heroku and rvm
export PATH=\
/usr/local/heroku/bin:\
/usr/local/bin:\
$PATH:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/opt/X11/bin:\
$HOME/.rvm/bin

# -----------------------
# SOURCING EXTERNAL FILES
# -----------------------

source $ZSH/oh-my-zsh.sh
source /usr/local/bin/z.sh
source .aliases
source .aliases_osx
source .functions

# Fixes rvm and zsh issue
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# --------------------
# ZSH-SPECIFIC ALIASES
# --------------------
