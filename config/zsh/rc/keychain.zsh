
function() {
	if (( $+commands[keychain] )); then
		eval `keychain --eval --quiet --dir "$XDG_DATA_HOME/keychain" id_ed25519`
	fi
}
