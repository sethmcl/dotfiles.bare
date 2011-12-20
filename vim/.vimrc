call pathogen#infect()
call pathogen#helptags()

set nocompatible
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
colorscheme desert

"" NERDTree Bindings
nmap <C-p> :NERDTreeToggle<CR>
