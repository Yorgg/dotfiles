" Solarized Dark
syntax enable
set background=dark
colorscheme solarized

" can select methods with %
runtime macros/matchit.vim
let g:ctrlp_show_hidden = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'VundleVim/Vundle.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'greplace.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-rails.git'
Plugin 'craigemery/vim-autotag'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()            " required

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" nerd tree mapping
map <leader>t :NERDTreeToggle<CR>

set nocompatible
set tags=./tags;
set ignorecase  " case insensitive search
set smartcase   " overrides ignore case if you use capital!
set smartindent
set number
set incsearch
set hlsearch
set backspace=2 " makes backspace work like most other apps
set scrolloff=2 " scroll offset, keeps 2 lines above the cursor
set shiftwidth=2
set softtabstop=2
set paste 

if has("autocmd")
  filetype indent plugin on
endif

let mapleader = "\<Space>"

nmap j gj
nmap k gk
nmap 0 ^
noremap <C-s> <esc>:w<cr>

" Remap ; :
noremap ; :

" Remap toggling panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command! Q q 
command! Qall qall
command! QA qall
command! E e

nmap <leader>h :nohlsearch<cr>

"rails stuff 
nmap <leader>sc :split db/schema.rb<cr>

" rapid edit vimrc
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>s :w<cr>

" maximize in new tab
nmap <leader>nt :tabedit %<cr>  

" close tab
nmap <leader>ct :tabclose<cr>
