
" -----------------------------------------------------------------
" SYSTEM INSPECTION {{{
" -----------------------------------------------------------------

" sometimes it's useful to know what we're running on
let OS=substitute(system('uname -s'),"\n","","")

" remove all existing autocmds
autocmd!

" }}}

" -----------------------------------------------------------------
" VIM-PLUG {{{
" -----------------------------------------------------------------

" download vim-plug if missing
if empty(glob("$XDG_DATA_HOME/nvim/site/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo $XDG_DATA_HOME/nvim/site/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
silent! if plug#begin("$XDG_DATA_HOME/nvim/site/plugin")

" Make sure you use single quotes
  Plug 'tpope/vim-sensible'              " Defaults everyone can agree on.
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-repeat'
	Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    \ }
  Plug 'junegunn/fzf'
  set rtp+=/usr/local/opt/fzf
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
  Plug 'junegunn/vim-easy-align'
  Plug 'Raimondi/delimitMate'       " Provides insert mode auto-completion for quotes, parens, brackets, etc.

  " Colors
  " Plug 'connorholyday/vim-snazzy'
  " Plug 'jacoborus/tender.vim'
  " Plug 'patstockwell/vim-monokai-tasty'
  Plug 'nikitavoloboev/vim-monokai-night' 
  " Plug 'itchyny/lightline.vim'


  " ignore these on older versions of vim
  if v:version >= 703
   
  endif
  if v:version >= 704
  endif

  if has('mac')
    Plug 'junegunn/vim-xmark'
  endif


  call plug#end()
endif

" }}}

" -----------------------------------------------------------------
" BASIC SETTINGS {{{
" -----------------------------------------------------------------

set nocompatible                    " Must come first because it changes other options.
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te= 
" lets enjoy $TERM = xterm-256color :~)
if !has('gui_running')
  set t_Co=256
endif             

" The following settings are commented since I inherit them from Sensible Plugin: http://tinyurl.com/cynv6s6
" syntax enable                     " Turn on syntax highlighting.
" filetype plugin indent on         " Turn on file type detection.
" set autoindent
" set backspace=indent,eol,start    " Intuitive backspacing.
" set incsearch                     " Highlight matches as you type.
" set hlsearch                      " Highlight found searches
" set laststatus=2                  " Show the status line all the time
" set ruler                         " Show cursor position.
" set wildmenu                      " Enhanced command line completion.
" set encoding=utf-8                " utf-8—like a sane person
" runtime macros/matchit.vim        " Load the matchit plugin.

" This following settings override Sensible Plugin when the plugin doesn't make sense!
set complete=.,w,b,u,t,kspell       " add `kspell` to completion (use dictionary only when spelling is enabled)
set scrolloff=3                     " Show 3 lines of context around the cursor.

set expandtab                     " use spaces instead of tabs
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set hidden                        " Handle multiple buffers better.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set relativenumber                " Always be on line zero.
set wrap                          " Turn on line wrapping.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set nobackup nowritebackup        " Don't make a backup before overwriting a file.
set nocursorcolumn nocursorline   " Speed up syntax highlighting
set nojoinspaces                  " only one space after sentences (i am reformed)
set shiftround                    " indentation
set splitright                    " Split vertical windows right to the current windows
set splitbelow                    " Split horizontal windows below to the current windows
set modelines=5                   " ensure we process modelines
set virtualedit=block             " allow block selection to go outside of the actual text
set binary noeol                  " Don’t add empty newlines at the end of files
set foldmethod=manual             " Turn folding off for real, hopefully
set nofoldenable
set autoread                      " If a file is changed outside of vim, automatically reload it without asking.
set diffopt=vertical              " Diffs are shown side-by-side not above/below
set signcolumn=no                 " Always show the sign column
set termguicolors                 " True color mode! (Requires a fancy modern terminal, but iTerm works.) 
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set updatetime=1000               " Write swap files to disk and trigger CursorHold event faster (default is after 4000 ms of inactivity)
" set updatecount=0               " Disable swap files; systems don't crash that often these days
set completeopt=menu,preview      " Completion options: menu -> use a popup menu and preview -> show more info in menu
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
" Clipboard settings
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
" Global enable spell check
"set spell spelllang=en_us        " spell check go to highlighted word and "z=" to see list. To turn off set nospell
setlocal spell spelllang=en_us
setlocal spellfile=$HOME/.vim-spell-en.utf-8.add


" Set color scheme
" colorscheme snazzy
" colorscheme tender
colorscheme monokai-night

" let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
" let g:lightline = { 'colorscheme': 'monokai_tasty' }  " Optional lightline theme
" colorscheme vim-monokai-tasty                         " set the colorscheme


" }}}

" -----------------------------------------------------------------
" MAPPINGS {{{
" -----------------------------------------------------------------

let mapleader=","
let g:mapleader = ","


" RENAME CURRENT FILE
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

" Remove fancy characters like smart quotes, etc.
function! RemoveFancyCharacters()
    let typo = {}
    let typo["“"] = '"'
    let typo["”"] = '"'
    let typo["‘"] = "'"
    let typo["’"] = "'"
    let typo["–"] = '--'
    let typo["—"] = '---'
    let typo["…"] = '...'
    :exe ":%s/".join(keys(typo), '\|').'/\=typo[submatch(0)]/ge'
endfunction
command! RemoveFancyCharacters :call RemoveFancyCharacters()

" Strip trailing whitespace (<leader>ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;
"vnoremap ; :
"vnoremap : ;

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


noremap <leader>y "*y                " Yank text to the macOS clipboard
noremap <leader>yy "*Y               " Yank text to the macOS clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>  " Preserve indentation while pasting text from the macOS clipboard
inoremap <c-c> <esc>                 " Can't be bothered to understand ESC vs <c-c> in insert mode
map <leader>q :q<CR>                 " Too many times of quitting and ain't enough time!
map <leader>Q :q!<CR>                " Seriousely, quit.
nmap <leader>w :w!<cr>               " Fast saving.
nnoremap <leader><leader> <c-^>      " toggle between last open buffers. <leader><leader> is more convenient than <c-^>
vnoremap <leader>ib :!align<cr>      " Align selected lines
nnoremap <leader>o :only<cr>         " Close all other splits
map <leader>n :call RenameFile()<cr> " <leader>n renames the current open file
noremap <leader>ss :call StripWhitespace()<CR>
noremap <leader>W :w !sudo tee % > /dev/null<CR>  " Save a file as root (,W)

" ==================== vim.plug ====================
nmap <leader>uu :PlugUpgrade<cr>:PlugUpdate<cr>  " shortcut for updating all vim plugins and also upgrading vim.plug itself.


" ==================== FZF ====================
nmap <C-b> :FZF<cr>
imap <C-b> <esc>:FZF<cr>

" ==================== Fugitive ====================
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>

" ==================== delimitMate ====================
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'

cnoremap <expr> %% expand('%:h').'/' " Expand %% to current directory in command-line mode. http://vimcasts.org/e/14
map <leader>ew :e %%                 " ,ew open in window. expands to ':e path/to/directory/of/current/file/'
map <leader>es :sp %%                " ,es open in split
map <leader>ev :vsp %%               " ,ev open in vertical split
map <leader>et :tabe %%              " ,et open in tab  

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmov



let g:omni_sql_no_default_maps = 1  " Stop SQL language files from doing unholy things to the C-c key

" }}}


" -----------------------------------------------------------------
" AUTOCMD {{{
" -----------------------------------------------------------------

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
    
" }}}

" Enable spell check for certain files
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell

" FZF stuff
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


" spell check for git commits
autocmd FileType gitcommit setlocal spell


" -----------------------------------------------------------------
" ABBREVIATIONS {{{
" -----------------------------------------------------------------

" }}}



" -----------------------------------------------------------------
" EXPERIMENTS {{{
" -----------------------------------------------------------------

" }}}