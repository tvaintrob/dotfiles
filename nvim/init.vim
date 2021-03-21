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
set undodir=~/.config/nvim/undo

call plug#begin(stdpath('data') . '/plugged')

Plug 'lifepillar/vim-gruvbox8'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'neoclide/jsonc.vim'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sbdchd/neoformat'

Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-vinegar'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


call plug#end()

colorscheme gruvbox8_hard

highlight LineNr guibg=#2a2a2a
highlight! link SignColumn LineNr

lua require('lua-config.lsp')
lua require('lua-config.misc')
lua require('lua-config.telescope')

let mapleader = ','
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
