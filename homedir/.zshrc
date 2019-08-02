# Path to your oh-my-zsh configuration.
export ZSH=$HOME/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh


# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL10K_MODE='awesome-patched'
# export ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status history time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL10K_NVM_FOREGROUND='000'
POWERLEVEL10K_NVM_BACKGROUND='072'
POWERLEVEL10K_SHOW_CHANGESET=true

# export ZSH_THEME="subnixr/minimal"
# export MNML_INSERT_CHAR="$"
# export MNML_PROMPT=(mnml_git mnml_keymap)
# export MNML_RPROMPT=('mnml_cwd 20')

# export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line


# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol


source $HOME/.zplugins

source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
fortune

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh
