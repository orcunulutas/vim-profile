" ===== Genel =====
syntax on
filetype plugin indent on
set number
set relativenumber
set termguicolors
set background=dark
set mouse=a
set clipboard=unnamedplus
set hidden

" ===== Tab / Split =====
set tabstop=4
set shiftwidth=4
set expandtab
set splitright
set splitbelow

" ===== Arama =====
set ignorecase
set smartcase
set incsearch
set hlsearch

" ===== Performans =====
set updatetime=300
set timeoutlen=500

" ==== clipboard =====
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p



" === eklentiler ===
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'gbprod/yanky.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()
