set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set splitbelow
set splitright

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme gruvbox
"colorscheme onedark
highlight Normal guibg=None

let mapleader = " " 
" Open terminal (ot)
nnoremap <leader>ot :sp<CR>:terminal<CR>:resize 15<CR>
nnoremap <leader>vot :vsp<CR>:terminal<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

