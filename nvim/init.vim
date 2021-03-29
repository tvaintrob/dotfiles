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
set termguicolors
set guioptions+=!
set signcolumn=yes
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
Plug 'editorconfig/editorconfig-vim'
Plug 'windwp/nvim-autopairs'
Plug 'sbdchd/neoformat'
Plug 'onsails/lspkind-nvim'
Plug 'gennaro-tedesco/nvim-jqx', { 'for': ['json', 'jsonc'] }
Plug 'alvan/vim-closetag', { 'for': ['html', 'javascriptreact', 'typescriptreact'] }

Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-vinegar'
Plug 'glepnir/indent-guides.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
Plug 'glepnir/lspsaga.nvim'

Plug 'ChristianChiarulli/html-snippets', { 'for': 'html' }
Plug 'ChristianChiarulli/python-snippets', { 'for': 'python' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'lewis6991/gitsigns.nvim'

call plug#end()

colorscheme gruvbox8_hard

highlight LineNr guibg=#2a2a2a
highlight! link SignColumn LineNr

highlight GitSignsAdd guibg=#2A2A2A guifg=#587C0C
highlight GitSignsChange guibg=#2A2A2A guifg=#0C7D9D
highlight GitSignsDelete guibg=#2A2A2A guifg=#94151B

highlight LspDiagnosticsSignHint guibg=#2A2A2A
highlight LspDiagnosticsSignError guibg=#2A2A2A
highlight LspDiagnosticsSignWarning guibg=#2A2A2A
highlight LspDiagnosticsSignInformation guibg=#2A2A2A

lua require('lua-config.lsp')
lua require('lua-config.misc')
lua require('lua-config.autopairs')
lua require('lua-config.telescope')

let mapleader = ','
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
