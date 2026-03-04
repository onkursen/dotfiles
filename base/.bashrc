# -------------------
# COMMON DEPENDENCIES
# -------------------
local RC_DIR="$(dirname "$(readlink -f "${HOME}/.bashrc")")"
export HELPERS_DIR="$(cd "$RC_DIR/../helpers" && pwd)"
source $HELPERS_DIR/common.sh

# -----------------------
# GIT-AWARE PROMPT
# Prerequisite:
# git clone git://github.com/jimeh/git-aware-prompt.git $HELPERS_DIR/.git-aware-prompt
# -----------------------

export GITAWAREPROMPT=$HELPERS_DIR/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

user="${txtblu}\u@\h${txtrst}"
current_dir="${bldblk}\w${txtrst}"
git_info="${txtcyn}\$git_branch${txtred}\$git_dirty${txtrst}"
shell="${bldylw}bash${txtrst}"
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
