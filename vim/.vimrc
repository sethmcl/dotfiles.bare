set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()                  " Use Vundle to manage plugins

"call pathogen#infect()
"call pathogen#helptags()

" Configure Bundles (plugins)
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'cakebaker/scss-syntax.vim.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'git://repo.or.cz/vcscommand.git'
Bundle 'hujinpu/js-test-driver-vim-plugin.git'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mileszs/ack.vim'
Bundle 'jimmyhchan/dustjs.vim'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim'
Bundle 'snipmate-snippets'
Bundle 'garbas/vim-snipmate.git'
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
Bundle 'lambdalisue/nodeunit.vim.git'
Bundle 'reinh/vim-makegreen.git'
Bundle 'godlygeek/tabular.git'

filetype plugin indent on         " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                       " display incomplete commands

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2 shiftwidth=2        " a tab is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ...unless they contain at least on capital letter

"" Display
set number
set ruler
set cursorline
set list                          " reset list characters
set listchars=tab:\ \             " tab should display as  \ \
set listchars+=trail:.            " show trailing whitespace as dots
set listchars+=extends:>
set listchars+=precedes:<

map <C-m> <ESC>

"" Colors
set t_Co=256
colorscheme s

"" Text manipulation
nmap <F7> :m--<CR>                 " move line of text up
nmap <F6> :m+<CR>                  " move line of text down 

"" NERDTree Bindings
nmap <C-p> :NERDTreeToggle<CR>

"" Command-T Bindings
nmap <C-t> :CommandT<CR>

"" Tab bindings
nmap <C-l> :tabn<CR>
nmap <C-h> :tabp<CR>

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" Added for Powerline
set laststatus=2                  " always show the statusline
