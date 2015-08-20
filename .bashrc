# git clone git://github.com/jimeh/git-aware-prompt.git ~/.git-aware-prompt
export GITAWAREPROMPT=~/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirt\
y\[$txtrst\]\$ "

alias git-config="emacs ~/.gitconfig"
alias ssh-config="emacs ~/.ssh/config"

alias df="df -h"
alias du="du -hc"
alias e="emacs"
alias f="find . -name"
alias g="git"
alias h="head"
alias o="open"
alias p="python"
alias pc="pbcopy"
alias p1="patch -p1 <"
alias rr="rm -rf"
alias scp="rsync -avzP"
alias t="tail"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tn="tmux new -s"
