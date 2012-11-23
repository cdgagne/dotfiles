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

set colorcolumn=80

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
" Temporarily commented out while I try out syntastic
set statusline=%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}%<
set laststatus=2

" Syntastic
" Note: Requires pyflakes binary installed in $PATH
Bundle 'scrooloose/syntastic'

let g:syntastic_check_on_open=1

" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
"if has('statusline')
"  set laststatus=2
"  " Broken down into easily includeable segments
"  set statusline=%<%f\ " Filename
"  set statusline+=%w%h%m%r " Options
"  set statusline+=%{fugitive#statusline()} " Git Hotness
"  set statusline+=\ [%{&ff}/%Y] " filetype
"  set statusline+=\ [%{getcwd()}] " current dir
"  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*
"  let g:syntastic_enable_signs=1
"  "set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
"endif

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
