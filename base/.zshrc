# -------------------
# COMMON DEPENDENCIES
# -------------------
export HELPERS_DIR=$HOME/git/dotfiles/helpers
source $HELPERS_DIR/.common

# -----------------------
# OH-MY-ZSH CONFIGURATION
# Prerequisites:
# git clone \
# https://github.com/zsh-users/zsh-syntax-highlighting \
# $ZSH/plugins/zsh-syntax-highlighting
# -----------------------

ZSH=$HOME/.oh-my-zsh
plugins=(z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# --------------------
# Prompt customization
# --------------------
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$FG[001]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

local user='%{$fg[blue]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}'
local git_info='$(git_prompt_info)%{$reset_color%}'
local time_s='$(date +"%b %d %R:%S")'
local kube_context_ns='$(kinfo)'

PROMPT="[${time_s} | ${user}:${current_dir}${git_info}${kube_context_ns}]
"

# -------------
# MISCELLANEOUS
# -------------
export EDITOR=vim

# Map alt-right and alt-left to move between words
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word
