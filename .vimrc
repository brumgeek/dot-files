set nocompatible
filetype off
set encoding=utf-8
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundles Here
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
"Bundle 'scrooloose/syntastic'
" vim-snipmate
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "garbas/vim-snipmate"


"Tools
Plugin 'mattn/emmet-vim'

" Ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

filetype plugin indent on
"
"" Brief help
" :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.

"Ignore PDFS
set wildignore+=,*.pdf,*.swp,*.zip,*.png,*.gif,*.jpg,*.otf,*.ttf,*.eps,*.ai,*.psd,*.ind

" Settings
set number
syntax enable
set background=dark
colorscheme solarized

"Search Settings
set incsearch					" find as you type search
set hlsearch					" highlight search terms
set ignorecase					" case insensitive search
set smartcase					" case sensitive when uc present

"window splits
set winheight=40
set winminheight=5

set winwidth=40
set winminwidth=5

" Yep, spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" No error noise on
" bad key-strokes, etc
set visualbell
set noerrorbells

" Change backup and swap dirs
" So these files don't appear in
" our project directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Creat Directories if not there
silent execute '!mkdir -p $HOME/.vim/backup'
silent execute '!mkdir -p $HOME/.vim/swap'

" Set leader to comma
let mapleader = ","
let g:mapleader = ","

" Save via ',w'
nmap <leader>w :w!<cr>

" Run phpunit via ',t'
map <Leader>t :!phpunit %<cr>
nmap <Leader>tt :!phpunit<cr>

" Exit insert mode via 'jj'
imap jj <esc>

" Ctrl-n for NERDTree
" Ctrl-ww to switch between NERDTree and panes
map <C-n> :NERDTreeToggle<CR>

" CtrlP to open CtrlP
" Ctrl-T to open highlighted file in new tab

" User older-School (more font-friendly) directory
" arrows in directory listings
" Use this if set encoding utf-8 doesn't fix this issue:
" http://superuser.com/questions/401413/cant-open-folders-in-linux-nerdtree-vim
" https://github.com/scrooloose/nerdtree/issues/108
" let NERDTreeDirArrows=0

" Remove trailing spaces
" Within PHP files
autocmd BufWritePre *.php :%s/\s\+$//e

" Open composer.json file easily
" within a new tab via ',lc'
nmap <leader>lc :tabe composer.json<cr>

" Remove folding of markdown
" as per https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" Airline on all the time
set laststatus=2

"Markdown to HTML
nmap <leader>md :%!~/bin/Markdown.pl --html4tags <cr>

"Visual selected Markdown to html
vmap mm :!~/bin/Markdown.pl --html4tags

"line length
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Nerdtree show hidden files
let g:NERDTreeShowHidden=1

"Visual to clipboard
set clipboard=unnamedplus
