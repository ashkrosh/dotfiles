# Path to your oh-my-zsh configuration.
export ZSH=$HOME/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh


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


# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Dynamic loading plugins
# source <(antibody init)
# antibody bundle < $HOME/.zsh_plugins.txt

# Static loading plugins is faster.
source $HOME/.zplugins

# Makes sure the auto-completions are case insensitive - http://tinyurl.com/y286kgcp
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'


##########################################################
# NVM
##########################################################
# source /usr/local/opt/nvm/nvm.sh
#
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use &> /dev/null
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     nvm use default &> /dev/null
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

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

# autoload -Uz compinit
# if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
#   compinit
# else
#   compinit -C
# fi

eval $(thefuck --alias)


##########################################################
# Last touches on Zsh before going...
##########################################################
# Unset annoying auto-corrects by zsh
unsetopt correct

# run fortune on new terminal :)
# fortune

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh

