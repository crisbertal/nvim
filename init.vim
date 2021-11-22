syntax on
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
set colorcolumn=100
set splitbelow
set splitright

call plug#begin('~/.vim/plugged')
    " Themes
    Plug 'joshdick/onedark.vim'

    " Fuzzy finder 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Statusbar customization
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Same colors in the status for tmux
    Plug 'edkolev/tmuxline.vim'

    " Code formatter
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }

    " JS plugins
    Plug 'yuezk/vim-js'                 " syntax highlight
    Plug 'maxmellon/vim-jsx-pretty'     " jsx highlight and formatter

    " Code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git integration
    Plug 'tpope/vim-fugitive'

    " File explorer in split
    Plug 'tpope/vim-vinegar'

    " Autopairs
    Plug 'jiangmiao/auto-pairs'

    " Highlight the current word
    Plug 'RRethy/vim-illuminate'

    call plug#end()

colorscheme onedark
highlight Normal guibg=None

" >> Basic settings
" >> Powerline fonts for airline
let g:airline_powerline_fonts = 1

" Open terminal (ot)
let mapleader = " " 
nnoremap <leader>ot :sp<CR>:terminal<CR>:resize 15<CR>
nnoremap <leader>vot :vsp<CR>:terminal<CR>

" >> setup prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Splits control
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" >> Telescope bindings
" most recently used files
nnoremap <Leader>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" git files
nnoremap <Leader>g <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.find_files{}<CR>


" >> Coc
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
