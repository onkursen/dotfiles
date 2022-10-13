# -------------------
# COMMON DEPENDENCIES
# -------------------
export HELPERS_DIR="${HOME}/git/dotfiles/helpers"
source "${HELPERS_DIR}/common.sh"

# -----------------------
# OH-MY-ZSH CONFIGURATION
# Prerequisites:
# git clone \
# https://github.com/zsh-users/zsh-syntax-highlighting \
# $ZSH/plugins/zsh-syntax-highlighting
# -----------------------

ZSH="${HOME}/.oh-my-zsh"
plugins=(z zsh-syntax-highlighting)
source "${ZSH}/oh-my-zsh.sh"

# -----------------
# Work helpers
# -----------------
local WORK_SH="$HELPERS_DIR/work.sh"
source "${WORK_SH}"
alias workedit="vim ${WORK_SH}"

# --------------------
# Prompt customization
# --------------------
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

local USER="$(whoami)"
#local USER='%{$fg[blue]%}%n%{$reset_color%}'
local CURRENT_DIR='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}'
local GIT_INFO='$(git_prompt_info)%{$reset_color%}'
local TIME_S='$(date +"%b %d %R:%S")'
local KUBE_CONTEXT_NS='$(kinfo)'

# PROMPT="[${TIME_S} | ${USER}:${CURRENT_DIR}${GIT_INFO}${KUBE_CONTEXT_NS}]
# "
PROMPT="[${TIME_S} | ${USER}:${CURRENT_DIR}${KUBE_CONTEXT_NS}]
"
# -------------
# MISCELLANEOUS
# -------------
export EDITOR=vim

# Map alt-right and alt-left to move between words
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word
# export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
# export PATH="/usr/local/opt/node@16/bin:$PATH"
