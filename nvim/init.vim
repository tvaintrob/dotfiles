" NeoVim config file
" author: Tal Vintrob

syntax on

set hidden
set number
set relativenumber
set mouse=a
set splitright
set splitbelow
set noswapfile
set noerrorbells
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nohlsearch
set incsearch
set signcolumn=yes
set termguicolors
set noshowmode

call plug#begin(stdpath('data') . '/plugged')

" Plug 'ayu-theme/ayu-vim'
Plug 'lifepillar/vim-gruvbox8'

" Plug 'rktjmp/lush.nvim'
" Plug 'npxbr/gruvbox.nvim'


Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'neoclide/jsonc.vim'

Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-vinegar'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" let ayucolor="mirage"
" colorscheme ayu

colorscheme gruvbox8_hard

" colorscheme gruvbox8_hard
"
" highlight LineNr guibg=#2a2a2a
" highlight! link SignColumn LineNr

lua require('lua-config.lsp')
lua require('lua-config.lines')
lua require('lua-config.telescope')
lua require('lua-config.treesitter')

let mapleader = ','
