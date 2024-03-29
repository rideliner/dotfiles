  setopt long_list_jobs         # list jobs in the long format
  setopt auto_resume            # attempt to resume existing jobs
  setopt notify                 # report status of background jobs immediately
unsetopt bg_nice                # don't nice background tasks
unsetopt hup                    # don't kill jobs on shell exit
unsetopt hist_beep              # don't beep on invalid history entry
unsetopt list_beep              # don't beep on ambiguous completion
  setopt local_options          # allow functions to have local options
  setopt local_traps            # allow functions to have local traps
unsetopt hist_verify            # don't verify commands completed from history
  setopt hist_ignore_dups       # don't add to history if same as previous
  setopt hist_save_no_dups      #
  setopt hist_reduce_blanks     # remove blanks from commands
  setopt share_history          # share history between sessions
  setopt extended_history       # add timestamps to history
  setopt append_history         # don't erase history
  setopt inc_append_history     # add history immediately
unsetopt check_jobs             # don't repot on jobs when shell exit
  setopt auto_cd                # cd if cmd doesn't exist and directory does
  setopt auto_pushd             # cd pushes the old directory onto the stack
  setopt pushd_ignore_dups      # don't push multiple copies of a directory
  setopt pushd_silent           # don't print the stack after pushd/popd
  setopt pushd_to_home          # pushd witout args acts like `pushd $HOME`
  setopt cdable_vars            # precede cd command with ~ as a last resort
  setopt auto_name_dirs         #
  setopt multios                #
  setopt extended_glob          #
  setopt dotglob                # globbing sees hidden files
  setopt pushdminus             #
unsetopt clobber                #
unsetopt case_glob              # make globbing case insensitivee
  setopt rc_quotes              # allow '...''...' to signify a single quote
  setopt interactive_comments   # allow # comments in interactive shell
  setopt prompt_subst           # allow substitution in PROMPT