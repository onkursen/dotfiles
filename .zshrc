# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Themes located in ~/.oh-my-zsh/themes/
ZSH_THEME="fino-time"

# oh-my-zsh plugins located in ~/.oh-my-zsh/plugins/
plugins=(osx git sublime python npm emacs brew heroku)

source $ZSH/oh-my-zsh.sh
source ~/utils/z.sh

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

alias scp="rsync -avzP"
alias grep="grep --color="
alias df='df -h'
alias du='du -h -c'
alias patch="patch -p1 < "
alias ack="ack -ir"
alias grep="ack -ir"

alias such="g"
alias much="g"
alias so="g"
alias very="g"
alias wow="g st"

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