"" Nerdtree plugin
execute pathogen#infect()
autocmd vimenter * NERDTree

set nocompatible                " choose no compatibility with legacy vi
set mouse=a
set ruler
set nu
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
colorscheme zellner
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is four spaces
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color red chars above 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"" Color red trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

"" Remove trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

