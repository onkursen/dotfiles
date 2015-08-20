# onkursen.zsh-theme

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$FG[001]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$FG[040]%}○"

local user='%{$fg[blue]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg_bold[black]%}${PWD/#$HOME/~}%{$reset_color%}'
local git_info='$(git_prompt_info)%{$reset_color%}'
local shell='%{$fg_bold[green]%}zsh%{$reset_color%}'
local time_s='%*'

PROMPT="[${user} on ${shell} in ${current_dir}${git_info} at ${time_s}]
"
