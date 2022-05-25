let mapleader =" "

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'pearofducks/ansible-vim'

call plug#end()

set number relativenumber
syntax on
" highlights searches
set hlsearch
" sets our tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
" converts our tabs to spaces
set expandtab
set autoindent
set fileformat=unix

" Some basics:
set encoding=utf-8
set nocompatible
set scrolloff=10

filetype on
filetype plugin on

" Enable autocompletion ctrl+n to activate:
    set wildmode=longest,list,full

" Disables automatic commenting on new line:
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right.
    set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Check file in shellcheck:
    map <leader>s :!clear && shellcheck %<CR>

" Automatically deletes all trailing whitespace on save:
    autocmd BufWritePre * %s/\s\+$//e

" spell-check set to <leader>o, 'o' for 'orthography':
    map <leader>o :setlocal spell! spelllang=en_us<CR>

" Emmet shortcuts
let g:user_emmet_mode='n' "only enable normal mode functions
let g:user_emmet_leader_key=','

" NERDTree mapping
    map <C-o> :NERDTreeToggle<CR>

