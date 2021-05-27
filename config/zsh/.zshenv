source "$ZDOTDIR/xdg.sh"

export CLICOLOR=true
export LSCOLORS="ExFxBxDxCxegedabagacad"
# LS_COLORS generated from LSCOLORS using https://geoff.greer.fm/lscolors/
export LS_COLORS="di=1;34:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

export QUOTING_STYLE=literal

export EDITOR=nvim

export HISTFILE=$XDG_DATA_HOME/zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# keep only the first occurences
typeset -gU cdpath fpath mailpath path

export PAGER=less
export LESS=RFX

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export LESSHISTFILE="$XDG_DATA_HOME/lesshst"
export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export ANDROID_HOME="$XDG_DATA_HOME/android"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export SDKMAN_DIR="$XDG_DATA_HOME/sdkman"