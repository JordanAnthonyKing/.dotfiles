set nocompatible
filetype off

call plug#begin('~/.vim/vimfiles/plugged')
  Plug 'cormacrelf/vim-colors-github'
  Plug 'itchyny/lightline.vim'
  Plug 'thaerkh/vim-indentguides'
call plug#end()

syntax on
filetype plugin indent on

let mapleader = " "
set modelines=0
set number
set relativenumber
" set visualbell
" set wrap
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

set hidden
set ttyfast
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

set listchars="" 
" Visualize tabs and newlines
" set listchars=tab:¿\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" set t_Co=256

set guifont=Source_Code_Pro:h10:cANSI:qDRAFT
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
set clipboard=unnamed

"hi NormalColor ctermbg=46 ctermfg=0
"hi InsertColor ctermbg=51 ctermfg=0
"hi ReplaceColor ctermbg=165 ctermfg=0
"hi VisualColor ctermbg=202 ctermfg=0
"
"set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
"set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
"set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
"set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

if !has("gui_running")
  set t_Co=256
endif

if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
  set laststatus=2
  set lines   =35
  set columns =120
  colorscheme github
  let g:lightline={ 'colorscheme': 'github' }
endif

let g:indentguides_ignorelist=['text']
let g:indentguides_spacechar='¦'
let g:indentguides_tabchar='|'
