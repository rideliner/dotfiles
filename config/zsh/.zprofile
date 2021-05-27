# Execute code that does not affect the current session in the background
{
  # Compile the completion dump to increase startup speed
  zcompdump="$XDG_CACHE_HOME/zcompdump"
  [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]] && zcompile "$zcompdump"
} &!