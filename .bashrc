# -----------------------
# GIT-AWARE PROMPT
# Prerequisite:
# git clone git://github.com/jimeh/git-aware-prompt.git ~/.git-aware-prompt
# -----------------------

export GITAWAREPROMPT=~/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

user="\[$txtblu\]\u@\h\[$txtrst\]"
current_dir="\[$bldblk\]\w\[$txtrst\]"
if [ -z "$git_branch" ] ; then prefix="" ; else prefix=" "; fi
git_info="\$prefix\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]"
shell="\[$bldylw\]bash\[$txtrst\]"
time_s='\t'

export PS1="[${time_s}: ${user} using ${shell} in ${current_dir}${git_info}]
"

# -------
# EXPORTS
# -------

export SHELL_CONFIG="bashrc"

# -----------------------
# SOURCING EXTERNAL FILES
# -----------------------

source .aliases
source .aliases_osx
source .functions

# ---------------------
# BASH-SPECIFIC ALIASES
# ---------------------
