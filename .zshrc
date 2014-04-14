# -----------------------
# OH-MY-ZSH CONFIGURATION
# -----------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Themes located in ~/.oh-my-zsh/themes/
ZSH_THEME="fino-time"

# oh-my-zsh plugins located in ~/.oh-my-zsh/plugins/
plugins=()

# -----------------------
# SOURCING EXTERNAL FILES
# -----------------------

source $ZSH/oh-my-zsh.sh
source ~/utils/z.sh

# Fixes rvm and zsh issue
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# -------
# EXPORTS
# -------

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Customization for Heroku and rvm
export PATH=~/utils:\
/usr/local/heroku/bin:\
/usr/local/bin:\
$PATH:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/opt/X11/bin:\
$HOME/.rvm/bin

# -------
# ALIASES
# -------

alias edit="emacs ~/.zshrc"
alias reload="source ~/.zshrc"
alias gconfig="emacs ~/.gitconfig"

alias ....="cd ...."
alias .....="cd ....."
alias .....="cd ......"
alias a="ack"
alias c="cat"
alias df="df -h"
alias du="du -hc"
alias e="echo"
alias g="git"
alias gst="git status -sb"
alias gpull="git pull"
alias gpush="git push"
alias gpwd="openssl rand -base64 32"
alias j="z"
alias m="mysql"
alias mr="mysql -uroot -p"
alias o="open"
alias p="python"
alias pc="pbcopy"
alias pweb="python -m SimpleHTTPServer $1"
alias patch="patch -p1 < "
alias rr="rm -rf"
alias scp="rsync -avzP"
alias t="tail"
