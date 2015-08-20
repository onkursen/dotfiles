# -----------------------
# GIT-AWARE PROMPT
# Prerequisite: git clone git://github.com/jimeh/git-aware-prompt.git ~/.git-aware-prompt
# -----------------------

export GITAWAREPROMPT=~/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirt\
y\[$txtrst\]\$ "

# -----------------------
# SOURCING EXTERNAL FILES
# -----------------------

source .aliases
source .functions
