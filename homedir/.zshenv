# fpath=($fpath $HOME/.zsh/func)
# typeset -U fpath

# ZSH bash completion for homebrew: https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &>/dev/null; then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi