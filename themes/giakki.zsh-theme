# Color the first part red if the last command failed
local ret_color="%(?:%{$fg_bold[blue]%}:%{$fg_bold[red]%})"

PROMPT='%{$ret_color%}ಠ_ಠ %{$fg[yellow]%}%c%{$ret_color%}$(git_prompt_info)%{$ret_color%} ➤ %{$reset_color%}'
PROMPT2='%{$fg_bold[yellow]%}> %{$reset_color%}'
RPS1='%{$fg[blue]%}%~%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$ret_color%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$ret_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
