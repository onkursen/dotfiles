# ---------------
# GENERAL ALIASES
# ---------------

# Shell configuration
alias edit="vim ${HOME}/.$(basename $SHELL)rc"
alias reload="source ${HOME}/.$(basename $SHELL)rc"

# Enable aliases to be sudo’ed
alias sudo="sudo "

# git
alias g="git"
alias git-config="vim ${HOME}/.gitconfig"

# ssh
alias ssh-config="vim ~/.ssh/config"
alias ssh-copy="pbcopy < ~/.ssh/id_rsa.pub"
alias scp="rsync -avzP"

# tmux
alias tmux="tmux -f ${HELPERS_DIR}/.tmux.conf"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tn="tmux new -s"

# ls
alias ls="ls -FG"
alias l="ls -lah"
alias ll="ls -lh"
alias sl="ls"

# General-purpose shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias df="df -h"
alias du="du -hc"
alias e="emacs -nw"
alias f="find . \( -type l -o -type f \) -name"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias h="head"
alias j="z"
alias n="netstat -lnptu"
alias o="open"
alias p="python"
alias pc="pbcopy"
alias p1="patch -p1 <"
alias rr="rm -rf"
alias s="subl"
# alias valgrind="valgrind --leak-check=full --show-leak-kinds=all --dsymutil=yes"
alias v="vim"
alias t="tail"
