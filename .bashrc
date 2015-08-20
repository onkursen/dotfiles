# -----------------------
# GIT-AWARE PROMPT
# Prerequisite:
# git clone git://github.com/jimeh/git-aware-prompt.git ~/.git-aware-prompt
# -----------------------

export GITAWAREPROMPT=~/.git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

user="\[$txtblu\]\u@\h\[$txtrst\]"
current_dir="\[$bldblk\]\w\[$txtrst\]"
git_info=" \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]"
shell="\[$bldgrn\]bash\[$txtrst\]"
time_s='\t'

export PS1="[${user} on ${shell} in ${current_dir}${git_info} at ${time_s}]
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
