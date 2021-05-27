
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }

  function zle-line-finish() {
    echoti rmkx
  }

  zle -N zle-line-init
  zle -N zle-line-finish
fi

# [Home] - go to beginning of line
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line
fi

# [End] - go to end of line
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line
fi

# [Space] - do history expansion
bindkey ' ' magic-space

# [Ctrl-RightArrow] - move forward a word
bindkey '^[[1;5C' forward-word

# [Ctrl-LeftArrow] - move backward a word
bindkey '^[[1;5D' backward-word

# [Shift-Tab] - move backwards through completion menu
if [[ "${terminfo[kcbt]}" != "" ]]; then
  bindkey "${terminfo[kcbt]}" reverse-menu-complete
fi

# [Backspace] - delete backward
bindkey '^?' backward-delete-char

# [Delete] - delete forward
if [[ "${terminfo[kdch1]}" != "" ]]; then
  bindkey "${terminfo[kdch1]}" delete-char
else
  bindkey "^[[3~" delete-char
  bindkey "^[3;5~" delete-char
  bindkey "\e[3~" delete-char
fi

zstyle ':zle:*-line-or-beginning-search' leave-cursor false

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

up-line-or-local-history() {
	zle set-local-history 1
	zle up-line-or-beginning-search
	zle set-local-history 0
}

down-line-or-local-history() {
	zle set-local-history 1
	zle down-line-or-beginning-search
	zle set-local-history 0
}

zle -N up-line-or-local-history
zle -N down-line-or-local-history

# [Page-Up] - history backward
if [[ "${terminfo[kpp]}" != "" ]]; then
  bindkey "${terminfo[kpp]}" history-beginning-search-backward
fi

# [Page-Down] - history forward
if [[ "${terminfo[knp]}" != "" ]]; then
  bindkey "${terminfo[knp]}" history-beginning-search-forward
fi

# [Up-Arrow] - move up in local history
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	bindkey "${terminfo[kcuu1]}" up-line-or-local-history
fi

# [Down-Arrow] - move down in local history
if [[ "${terminfo[kcud1]}" != "" ]]; then
	bindkey "${terminfo[kcud1]}" down-line-or-local-history
fi
