##############################################################################
# Import the shell-agnostic (Bash or Zsh) environment config
##############################################################################
source ~/.profile

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=10000               #How many lines of history to keep in memory
HISTFILE="$HOME/.history"    #Where to save history to disk
SAVEHIST=$HISTSIZE           #Number of history entries to save to disk
HISTDUP=erase                #Erase duplicates in the history file
HISTIGNORE=?:??              #Ignores all 1-2 word commands for more efficiency
setopt    appendhistory      #Append history to the history file (no overwriting)
setopt    sharehistory       #Share history across terminals
setopt    incappendhistory   #Immediately append to the history file, not just when a term is killed
