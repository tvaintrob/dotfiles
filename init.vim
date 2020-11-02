" NeoVim Config
"
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

call plug#begin(stdpath('data') . '/plugged')

" Lua Plugs
Plug 'nvim-treesitter/nvim-treesitter'

" UI
Plug 'dracula/vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'sainnhe/gruvbox-material'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scottmcginness/vim-foldtext'

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
Plug 'unblevable/quick-scope'
Plug 'kkoomen/vim-doge'
Plug 'alvan/vim-closetag'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'ludovicchabant/vim-gutentags'
Plug 'puremourning/vimspector'
Plug 'liuchengxu/vista.vim'

" Language Extensions
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alfredodeza/pytest.vim'
Plug 'sheerun/vim-polyglot'
Plug 'kevinoid/vim-jsonc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader = ","

let g:mkdp_auto_close = 0
let g:rg_derive_root = 'true'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.tsx'
let g:polyglot_disabled = ['typescript', 'javascriptreact', 'javascript', 'python']
let g:qs_buftype_blacklist = ['terminal', 'nofile']

let g:go_gopls_enabled = 0
autocmd BufEnter,BufNew *.mod set filetype=gomod

if executable('rg')
  let g:gutentags_file_list_command = 'rg --files'
endif

nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>h :nohlsearch<CR>

" source all vim files in the config dir
for file in split(glob(stdpath("config").'/config/*.vim'), '\n')
    exe 'source' file
endfor

luafile /Users/tvaintrob/.config/nvim/config/treesitter.lua
