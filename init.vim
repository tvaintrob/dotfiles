" NeoVim Config
" by Tal Vintrob

syntax on

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set noerrorbells
set noswapfile
set lazyredraw
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set mouse=a
set hidden
set foldlevelstart=99 " start with open folds

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgray

let g:polyglot_disabled = ['typescript', 'typescriptreact', 'javascriptreact', 'javascript', 'python']

call plug#begin(stdpath('data') . '/plugged')

" Lua Plugs
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" UI
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'coreyja/fzf.devicon.vim'
Plug 'scottmcginness/vim-foldtext'
Plug 'glepnir/dashboard-nvim'

" Editor Behavior
Plug 'airblade/vim-rooter'
Plug 'psliwka/vim-smoothie'
Plug 'dhruvasagar/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'ajorgensen/vim-markdown-toc'
Plug 'liuchengxu/vista.vim'
Plug 'vimwiki/vimwiki'

" Language Extensions
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alfredodeza/pytest.vim'
Plug 'kevinoid/vim-jsonc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader = ","

let g:mkdp_auto_close = 0
let g:rg_derive_root = 'true'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.tsx'
let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']

let g:go_gopls_enabled = 0
autocmd BufEnter,BufNew *.mod set filetype=gomod

nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>h :nohlsearch<CR>

" source all vim files in the config dir
for file in split(glob(stdpath("config").'/config/*.vim'), '\n')
    exe 'source' file
endfor

lua require('lua_plugs')
