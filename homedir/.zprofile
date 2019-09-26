# vim:syntax=zsh
# vim:filetype=zsh

##############################################################################
# Import the shell-agnostic (Bash or Zsh) environment config
##############################################################################
source ~/.profile

##############################################################################
# ZSH History Configuration
##############################################################################
export HISTFILE="$HOME/.history"    # Where to save history to disk
export HISTSIZE=10000               # How many lines of history to keep in memory
export SAVEHIST=$HISTSIZE           # Number of history entries to save to disk
# export HISTDUP=erase              # Erase duplicates in the history file
# export HISTIGNORE=?:??            # Ignores all 1-2 word commands for more efficiency
setopt EXTENDED_HISTORY			    # write in the ":start:elapsed;command" format
setopt HIST_EXPIRE_DUPS_FIRST       # allow dups, but expire old ones when exceeding HISTSIZE
setopt HIST_FIND_NO_DUPS            # do not find duplicates in history
setopt HIST_IGNORE_ALL_DUPS         # ignore duplicate commands
setopt HIST_IGNORE_DUPS             # ignore duplicate commands
setopt HIST_IGNORE_SPACE		    # ignore entries starting with a space
setopt HIST_REDUCE_BLANKS           # leave blanks out
setopt HIST_SAVE_NO_DUPS            # do not save duplicates
setopt INC_APPEND_HISTORY           # write after each command
setopt SHARE_HISTORY                # share history between sessions

#################################################################################
#### Keybindings Configuration
#################################################################################
#### Set VIM mode
#### e.g. https://dougblack.io/words/zsh-vi-mode.html
#### Key code table: https://www.zsh.org/mla/users/2014/msg00266.html
####
#### vim mode keybindings
###bindkey -v
####
###bindkey '^P' up-history                           # ctrl-p
###bindkey '^N' down-history                         # ctrl-n
###bindkey -M viins '^p' up-line-or-history
###bindkey -M viins '^n' down-line-or-history
### backspace and ^h working even after
### returning from command mode
##bindkey '^?' backward-delete-char                 # backspace
##bindkey '^h' backward-delete-char                 # ctrl-h
##bindkey '^w' backward-kill-word                   # ctrl-w
##bindkey -M viins '^h' backward-delete-char
##bindkey -M viins '^w' backward-kill-word
##bindkey -M viins '^u' backward-kill-line
## search history
#bindkey -M viins '^r' history-incremental-pattern-search-backward
#bindkey -M viins '^s' history-incremental-pattern-search-forward
#bindkey "^[[3~" delete-char
#bindkey "^K" kill-whole-line                      # ctrl-k
#bindkey "^A" beginning-of-line                    # ctrl-a
#bindkey "^E" end-of-line                          # ctrl-e
#bindkey "^D" delete-char                          # ctrl-d
##bindkey "^F" forward-char                         # ctrl-f
#bindkey "^F" forward-word                         # ctrl-f
##bindkey "^B" backward-char                        # ctrl-b
#bindkey "^B" backward-word                        # ctrl-b
#bindkey -M viins '^a' beginning-of-line
#bindkey -M viins '^e' end-of-line
#bindkey -M viins '^k' kill-line
#bindkey -M viins '^y' yank
#bindkey -M viins '^_' undo
#bindkey -M viins '^x^r' redisplay
##bindkey -M viins '\eOH' beginning-of-line       # Home
##bindkey -M viins '\eOF' end-of-line             # End
##bindkey -M viins '\e[2~' overwrite-mode         # Insert
##bindkey -M viins '\ef' forward-word             # Alt-f
##bindkey -M viins '\eb' backward-word            # Alt-b
##bindkey -M viins '\ed' kill-word                # Alt-d
##bindkey -M vicmd '/' vi-history-search-forward
##bindkey -M vicmd '?' vi-history-search-backward
##bindkey -M vicmd '\e[5~' history-beginning-search-backward  # PageUp
##bindkey -M vicmd '\e[6~' history-beginning-search-forward   # PageDown
##-----------------------------------------------------
## https://github.com/zsh-users/zsh-history-substring-search
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#bindkey "^R" history-incremental-search-backward  # ctrl-r
#bindkey "[B" history-search-forward               # down arrow
#bindkey "[A" history-search-backward              # up arrow 

##############################################################################
# ZSH Specific Configuration
##############################################################################
# eliminates duplicates in *paths
typeset -gU cdpath fpath path

# # Zsh search path for executable
# path=(
#   /usr/local/{bin,sbin}
#   $path
# )
