set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'


" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()
filetype plugin on

set autoindent
set smartindent
set number
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set ruler
set rulerformat=%25(%n%m%r:\ %Y\ [%l,%v]\ %p%%%)
set autoread
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set nocompatible
set modeline
set encoding=utf-8
set backspace=indent,eol,start
set laststatus=2
set paste

filetype off
syntax on
set relativenumber
:highlight ExtraWhitespace ctermbg=red guibg=red
set t_Co=256
set background=light
set dir=~/.vim/tmp

autocmd FileType make setlocal noexpandtab
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

" Show trailing whitespace:
":match ExtraWhitespace /\s\+$/

map <C-UP> <C-W>k
map <C-DOWN> <C-W>j
map <C-LEFT> <C-W>h
map <C-RIGHT> <C-W>l
map <C-F> :TaskList<CR>
map <C-L> :TlistToggle<CR>
map <C-N> :NERDTreeToggle<CR>
map <C-c> <Leader>cc<CR>
nmap <C-T> :tabedit 
nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>
nmap <C-S> viw"0p

let g:vim_json_syntax_conceal = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set background=dark
colorscheme jellybeans
au BufRead *.json set ft=

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
