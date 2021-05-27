for src_file in $ZDOTDIR/rc/*(N); do
    source $src_file
done

[[ -f $XDG_CONFIG_HOME/localrc ]] && source $XDG_CONFIG_HOME/localrc
[[ -f $SDKMAN_DIR/bin/sdkman-init.sh ]] && source $SDKMAN_DIR/bin/sdkman-init.sh