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
Bundle 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'cakebaker/scss-syntax.vim.git'
Bundle 'Lokaltog/vim-powerline.git'

syntax enable
set encoding=utf-8
set showcmd                       " display incomplete commands
filetype plugin indent on         " load file type plugins + indentation

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

"" Colors
set t_Co=256
colorscheme desert-c

"" Text manipulation
nmap <F6> :m+<CR>                  " move line of text down 
nmap <F7> :m--<CR>                 " move line of text up
"nnoremap <A-j> :m+<CR>==          " move line of text down
"nnoremap <A-k> :m-2<CR>==         " move line of text up
"inoremap <A-j> <Esc>:m+<CR>==gi   " move line of text down
"inoremap <A-k> <Esc>:m-2<CR>==gi  " move line of text up
"vnoremap <A-j> :m'>+<CR>gv=gv     " move line of text down
"vnoremap <A-k> :m-2<CR>gv=gv      " move line of text up

"" NERDTree Bindings
nmap <C-p> :NERDTreeToggle<CR>

"" Tab bindings
nmap <C-h> :tabp<CR>
nmap <C-l> :tabn<CR>

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" Added for Powerline
set laststatus=2                  " always show the statusline
