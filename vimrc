" cdgagne/dotfiles/vimrc
set guifont=Liberation\ Mono\ for\ Powerline\ 10
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" Better split opening
set splitbelow
set splitright

" Show extra whitespace
set list listchars=tab:»·,trail:·

set smartindent
inoremap # X<BS>#

set expandtab
set textwidth=0
let Tlist_Ctags_Cmd="/usr/bin/ctags"

set cino+==0

set encoding=utf-8

set wildmenu
set wildignore=*.pyc,*.o,*.bak,*.jpg,*.jpeg,*.png,*.gif
set wildmode=list:full

set iskeyword-=

" Better colors with Solarized
set t_Co=16

" Better searching
set incsearch ignorecase smartcase hlsearch

" ,cd to change to the directory of the current file, and print it
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" ctrl-n for NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>


" Required for vundle
set nocompatible
syntax enable
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Solarized colour scheme
Bundle 'altercation/vim-colors-solarized.git'
if has('colorcolumn')
  " Support for colorcolumn only in vim >= 7.3
  set colorcolumn=80
endif
set background=dark
colorscheme solarized

" Github repos
Bundle 'kien/ctrlp.vim'

" Better Javascript
Bundle 'pangloss/vim-javascript'

" Git-friendly statusline
Bundle 'tpope/vim-fugitive'
set statusline=%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}%<
set laststatus=2

Bundle 'tpope/vim-dispatch'

" Syntastic
" Note: Requires pyflakes binary installed in $PATH
Bundle 'scrooloose/syntastic'

let g:syntastic_check_on_open=1

Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

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

Bundle 'kchmck/vim-coffee-script'

Bundle 'scrooloose/nerdtree'

Bundle 'airblade/vim-gitgutter'

Bundle 'bling/vim-airline'
" Get powerline fonts at https://github.com/Lokaltog/powerline-fonts
let g:airline_powerline_fonts=1

Bundle 'Valloric/MatchTagAlways'

" Auto-complete
"Bundle 'davidhalter/jedi-vim'

" Insert mode tab-completion
"Bundle 'ervandew/supertab'

" CSS color highlighting
Bundle 'ap/vim-css-color'

" Session saving
" Bundle 'xolox/vim-misc'
" Bundle 'xolox/vim-session'
" let g:session_autosave = 'no'

Bundle 'othree/html5.vim'

Bundle 'rodjek/vim-puppet'

Bundle 'danro/rename.vim'

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"

" Django test runner
Bundle 'JarrodCTaylor/vim-python-test-runner'
nmap <F10> :DjangoTestFile<CR>
nmap <F11> :DjangoTestClass<CR>
nmap <F12> :DjangoTestMethod<CR>

filetype plugin indent on " required

let g:syntastic_python_checkers=['pyflakes']

" FileType-specific indents
au FileType coffee setl sw=2 sts=2 et
au FileType js setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et

" Vundle commands:
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
