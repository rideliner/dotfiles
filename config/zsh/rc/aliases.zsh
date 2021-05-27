
function mcd() {
    mkdir "$1" && cd "$1"
}

alias sudo='sudo '
alias reload!='source $ZDOTDIR/.zshenv ; source $ZDOTDIR/.zshrc'
alias mkdir='mkdir -p'
alias md='mkdir'
alias rd='rmdir'
alias d='dirs -v | head -10'
alias disk='du -sch *(N) | sort -h'
alias ll='ls -lAh'
alias lr='ls -lAthr'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias /='cd /'

alias clear='(( $+TMUX )) && tmux send-keys -R \; clear-history || echo -ne "\033c"'
alias exit='(( $+TMUX )) && tmux kill-pane \; select-layout || \exit'

#alias ls='ls --color=tty'

(( $+commands[htop] )) && alias top='htop'
(( $+commands[nvim] )) && alias vim='nvim'
(( $+commands[tmux] )) && alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'

alias path='echo -e ${PATH//:/\\n}'

alias todo='grep -iR "TODO" *'
alias ping='ping -c4'
alias pong='ping 1.1.1.1'
alias my-ip='curl icanhazip.com'
alias my-ipv4='curl ipv4.icanhazip.com'
alias my-ipv6='curl ipv6.icanhazip.com'