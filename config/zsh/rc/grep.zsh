
GREP_OPTIONS="--color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}"
export GREP_COLOR='1;32' # '37;45' alternative?

alias grep="grep $GREP_OPTIONS"
alias egrep="egrep $GREP_OPTIONS"
alias fgrep="fgrep $GREP_OPTIONS"

unset GREP_OPTIONS
