set nocompatible
syntax on
filetype off

set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'morhetz/gruvbox'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'preservim/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'


call vundle#end()
filetype plugin indent on

" adding the gruvbox theme
colorscheme gruvbox
set background=dark


set autoindent
set autoindent
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set hlsearch
set ignorecase
set incsearch
set nolazyredraw 
set smartcase
set belloff=all
set visualbell
set number
set relativenumber
set so=8
set sidescrolloff=5
syntax enable
set backspace=2
set guifont=Fira_Code:h11
set laststatus=2 " Always display the status bar.
set wildmenu
set ruler
set guioptions -=T

set guicursor=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0



inoremap jk <ESC>
inoremap kj <ESC>

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Open new tab
nmap <C-t> :tabe<CR>
"nmap <C-w> :tabclose<CR>
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabnext<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
