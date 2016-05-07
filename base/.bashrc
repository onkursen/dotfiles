# -------------------
# COMMON DEPENDENCIES
# -------------------
export HELPERS_DIR=$HOME/dotfiles/helpers
source $HELPERS_DIR/.common

# -----------------------
# GIT-AWARE PROMPT
# Prerequisite:
# git clone git://github.com/jimeh/git-aware-prompt.git $HELPERS_DIR/.git-aware-prompt
# -----------------------

export GITAWAREPROMPT=$HELPERS_DIR/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

user="\[$txtblu\]\u@\h\[$txtrst\]"
current_dir="\[$bldblk\]\w\[$txtrst\]"
if [ -z "$git_branch" ] ; then prefix=""; else prefix=" "; fi
git_info="\$prefix\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]"
shell="\[$bldylw\]bash\[$txtrst\]"
time_s="$(date +"%b %d %R:%S")"

export PS1="[${time_s} | ${shell} | ${user}:${current_dir}${git_info}]
"

# -------------
# MISCELLANEOUS
# -------------

# Case-insensitive tab completion
# http://superuser.com/questions/90196
bind "set completion-ignore-case on"

alias ls="ls -FG"
