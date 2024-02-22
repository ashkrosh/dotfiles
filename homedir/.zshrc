# Uncomment for profiling:
# zmodload zsh/zprof

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh


# Lazy-load antidote and generate the static load file only when needed
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
  )
fi
source ${zsh_plugins}.zsh


# Path to your oh-my-zsh configuration.
export ZSH="$(antidote home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

# Set powerlevel10k prompt
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator aws dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history ssh time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
# POWERLEVEL9K_NVM_FOREGROUND='000'
# POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_TIME_FOREGROUND='208'


# Choose between one [code, code-insiders or codium]
# The following line will make the plugin to open VS Code Insiders
# Invalid entries will be ignored, no aliases will be added
VSCODE=codium


# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks. Antibody can do this for us.
export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# fix permission issues - see https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
export ZSH_DISABLE_COMPFIX="true"


# Static loading plugins is faster. Just remember to run 'zubndle' after adding your plugin to .zsh_plugins.txt
# . $HOME/.zplugins

# Makes sure the auto-completions are case insensitive - http://tinyurl.com/y286kgcp
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

##########################################################
# Misc settings
##########################################################
# Use C-x C-e to edit the current command line
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '\C-x\C-e' edit-command-line


# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
# unsetopt flowcontrol



##########################################################
# Last touches on Zsh before going...
##########################################################
# Unset annoying auto-corrects by zsh
unsetopt correct

# stop these errors https://github.com/asdf-vm/asdf/issues/266
# ...but make it faster https://carlosbecker.com/posts/speeding-up-zsh/
autoload -Uz compinit 
if [ $(/bin/date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
	compinit;
else
	compinit -C;
fi;


#zsh-completions
# fpath=(/usr/local/share/zsh-completions $fpath)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# source ~/.p10k.zsh

#https://github.com/asdf-vm/asdf
source /opt/homebrew/opt/asdf/libexec/asdf.sh
# source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# fuzzy search by z
source "$HOMEBREW_PREFIX/opt/z/etc/profile.d/z.sh"

#https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions



# run fortune on new terminal :)
# fortune


# Uncomment for profiling:
# zprof