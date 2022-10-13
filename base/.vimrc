" VIM CONFIGURATION

" Enable syntax highlighting
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

" Automatically set paste mode in Vim when pasting in insert mode
" https://coderwall.com/p/if9mda/
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Setting for git commit messages
autocmd FileType gitcommit setlocal spell cc=80

" Remap F3 to insert a row of dashes and a newline
nnoremap <F3> 79a-<esc>A<CR>
inoremap <F3> <esc>79a-<esc>A<CR>

" Remap F4 to insert the current date and a newline
nnoremap <F4> "=strftime("%a %d %b %H:%M:%S %Z %Y")<CR>PA<CR>
inoremap <F4> <C-R>=strftime("%a %d %b %H:%M:%S %Z %Y")<CR><CR>

" Tab navigation like Firefox.
nnoremap <F7> :tabprevious<CR>
nnoremap <F8> :tabnext<CR>
nnoremap <F9> :tabnew<CR>
inoremap <F7> <Esc>:tabprevious<CR>i
inoremap <F8> <Esc>:tabnext<CR>i
inoremap <F9> <Esc>:tabnew<CR>

" set textwidth=80
