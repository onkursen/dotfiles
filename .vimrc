" VIM CONFIGURATION

"Enable syntax highlighting
syntax on

" Show line ruler
" Courtesy Toshi Noguchi
set ruler
set cc=80

" Indent with 2 spaces
" http://stackoverflow.com/questions/234564/
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Courtesy https://github.com/skwp/dotfiles/blob/master/vimrc
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
