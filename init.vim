" NeoVim Config
"
" by Tal Vintrob

syntax on

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set lazyredraw
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set incsearch
set cmdheight=2
set updatetime=50
set shortmess+=c
set scrolloff=10
set mouse=a
set cursorline
set hidden
set splitbelow
set splitright
set conceallevel=0

set signcolumn=yes
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgray

call plug#begin(stdpath('data') . '/plugged')

" UI
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" Editor Behavior
Plug 'mbbill/undotree'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'unblevable/quick-scope'
Plug 'kkoomen/vim-doge'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Language Extensions
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-python/python-syntax'
Plug 'alfredodeza/pytest.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'sheerun/vim-polyglot'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set termguicolors
set background=dark
let ayucolor="dark"
colorscheme ayu

let mapleader = ","

let g:mkdp_auto_close = 0
let g:vim_markdown_conceal = 0
let g:rg_derive_root = 'true'
let g:airline#extensions#tabline#enabled = 1
let g:polyglot_disabled = ['typescript', 'typescriptreact', 'javascriptreact', 'javascript', 'python']
let g:coc_global_extensions = ['coc-python', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-prettier', 'coc-vimlsp']
let g:qs_buftype_blacklist = ['terminal', 'nofile']

let g:indentLine_char = '▏'
let g:indentLine_first_char = '▏'
let g:indentLine_showFirstIndentLevel = 1

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>h :nohlsearch<CR>

nnoremap <leader>ps :Rg<SPACE>
nnoremap <C-f> :Rg<CR>

command! Ctrlp execute (len(system('git rev-parse'))) ? ':Files' : ':GFiles'
nnoremap <C-p> :Ctrlp<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Coc.nvim GoTo mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Coc.nvim actions
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)


highlight Comment cterm=italic gui=italic
autocmd FileType vim,javascript,typescript,javascriptreact,typescriptreact highlight Type cterm=italic gui=italic

" Use Ctrl-Space to refresh completions
inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
