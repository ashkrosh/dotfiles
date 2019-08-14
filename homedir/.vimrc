
" -----------------------------------------------------------------
" SYSTEM INSPECTION {{{
" -----------------------------------------------------------------

" sometimes it's useful to know what we're running on
let OS=substitute(system('uname -s'),"\n","","")

" }}}
" -----------------------------------------------------------------
" VIM-PLUG {{{
" -----------------------------------------------------------------

" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
silent! if plug#begin()

  Plug 'airblade/vim-gitgutter'
  Plug 'c9s/perlomni.vim', { 'for': 'perl' }
  Plug 'junegunn/vim-easy-align'
  Plug 'gabrielelana/vim-markdown'
  Plug 'kien/ctrlp.vim'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'rking/ag.vim'
  Plug 'stephpy/vim-yaml'
  Plug 'tangledhelix/vim-kickstart'
  Plug 'thelocehiliosan/vim-byrne'
  Plug 'thelocehiliosan/vim-json'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-jdaddy'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-scripts/vis'

  " ignore these on older versions of vim
  if v:version >= 703
    Plug 'gerw/vim-HiLinkTrace'
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'guns/xterm-color-table.vim'
    Plug 'jamessan/vim-gnupg'
    Plug 'toyamarinyon/vim-swift'
    Plug 'uguu-org/vim-matrix-screensaver'
    Plug 'yegappan/mru'
  endif
  if v:version >= 704
    Plug 'vim-pandoc/vim-pandoc-syntax'
  endif

  " some plugins for the future?
  " Plug 'junegunn/vim-peekaboo'     -- conflicts with some things, not sure why
  " Plug 'Valloric/YouCompleteMe'    -- requires newer vim, future perhaps?
  " Plug 'scrooloose/syntastic'      -- possibly used for perl and puppet?
  " Plug 'ajh17/VimCompletesMe'      -- not supported yet, but promising

  call plug#end()
endif

" }}}