
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -U add-zsh-hook

function prompt_color() {
  local color

  zstyle -s ':ride:terminal:prompt' color color
  [[ -z $color ]] && color='white'

  echo -e "$color"
}

function safe_prompt_color() {
  echo -e "%{$fg_bold[$(prompt_color)]%}"
}

function safe_reset_color() {
  echo -e "%{$reset_color%}"
}

function prompt_character() {
  local char

  zstyle -s ':ride:terminal:prompt' char char

  [[ -z $char || $(tty) > "/dev/tty" ]] && zstyle -s ':ride:terminal:prompt' console-char char
  [[ -z $char ]] && char='$'

  echo -e "$(safe_prompt_color)$char"
}

PROMPT='$(prompt_character) '

ls_on_chdir() { ls; }

add-zsh-hook chpwd ls_on_chdir

zle_highlight=(default:fg=yellow,bold)
