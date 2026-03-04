# -------------------
# COMMON DEPENDENCIES
# -------------------
export HELPERS_DIR="${HOME}/dotfiles/helpers"
source "${HELPERS_DIR}/common.sh"

# -----------------------
# OH-MY-ZSH CONFIGURATION
# -----------------------
ZSH="${HOME}/.oh-my-zsh"
if [[ ! -d "$ZSH/plugins/zsh-syntax-highlighting" ]]; then
  git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting \
    "$ZSH/plugins/zsh-syntax-highlighting"
fi
plugins=(z zsh-syntax-highlighting)
source "${ZSH}/oh-my-zsh.sh"

# --------------------
# Prompt customization
# --------------------
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

local TIME_S='$(date +"%b %d %R:%S")'
local USER="$(whoami)"
local CURRENT_DIR='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}'
local GIT_INFO='$(git_prompt_info)%{$reset_color%}'
PROMPT="[${TIME_S} | ${USER}:${CURRENT_DIR}${GIT_INFO}]
"

# -------------
# MISCELLANEOUS
# -------------
export EDITOR=vim

# Map alt-right and alt-left to move between words
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word

# -----------------
# Work helpers
# -----------------
local WORK_SH="$HELPERS_DIR/work.sh"
source "${WORK_SH}" || touch "${WORK_SH}"
alias workedit="vim ${WORK_SH}"
alias work="vim ${WORK_SH}"
