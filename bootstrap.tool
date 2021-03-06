#!/usr/bin/env zsh

source "${0:A:h}/.internal/path.zsh"
source "$DOTFILES_PATH/.internal/log.zsh"

function {
  local src name bootstraps

  # .internal bootstraps need to be done in a specific order
  bootstraps+=($DOTFILES_PATH/.internal/partition.bootstrap)
  bootstraps+=($DOTFILES_PATH/.internal/symlink.bootstrap)
  bootstraps+=($DOTFILES_PATH/.internal/permissions.bootstrap)

  for src ($bootstraps(N)); do
    name="${${src#$DOTFILES_PATH/}%.bootstrap}"
    dotfiles/log/wrapper/start "BOOT" "$name"

    source "$src"

    dotfiles/log/wrapper/end "finished $name bootstrap"
  done
}
