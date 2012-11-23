" cdgagne/dotfiles/vimrc
set guifont=Liberation\ Mono\ 10
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set smartindent
inoremap # X<BS>#

set expandtab
set textwidth=0
let Tlist_Ctags_Cmd="/usr/bin/ctags"

let g:solarized_style='dark'
color solarized

syn on

set cino+==0

set encoding=utf-8

set wildmenu
set wildignore=*.pyc,*.o,*.bak,*.jpg,*.jpeg,*.png,*.gif
set wildmode=list:full

" Better searching
set incsearch ignorecase smartcase hlsearch

" Required for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Github repos
Bundle 'kien/ctrlp.vim'

" Better Javascript
Bundle 'pangloss/vim-javascript'

" Git-friendly statusline
Bundle 'tpope/vim-fugitive'
set statusline=%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}%<
set laststatus=2

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " required

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
