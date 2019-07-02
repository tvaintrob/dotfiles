" NeoVIM config file
"
" Created: 03/07/2018
" Author: Tal Vintrob

" install vim-plug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" auto install plugins
autocmd VimEnter *
            \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall | q
            \| endif

let mapleader = ','

" install plugins
call plug#begin('~/.local/share/nvim/plugged')

" UI & colors
Plug 'blueshirts/darcula'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot' " language pack
Plug 'mhinz/vim-startify'
Plug 'neoclide/jsonc.vim'

" Editor Behavior
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-endwise'
Plug 'cohama/lexima.vim'
let g:lexima_enable_newline_rules = 1

Plug 'alvan/vim-closetag'
let g:closetag_filetypes = 'html,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_regions = { 'typescript.tsx': 'jsxRegion,tsxRegion', 'javascript.jsx': 'jsxRegion' }

" File Navigation
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nmap <leader><leader> :Files<cr>
nmap <leader>t :Tags<cr>

" Source Control
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = ['git']

" Language Features
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

Plug 'Chiel92/vim-autoformat'
autocmd BufWrite * :Autoformat
let g:formatters_python = ['autopep8']
let g:formatters_typescript = ['prettier']
let g:formatters_javascript = ['prettier']

call plug#end()


" color settings
syntax on
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
colorscheme darcula

highlight Comment cterm=italic gui=italic

set number
set relativenumber
set signcolumn=yes

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Tab for selecting expanding and jumping through snippets
inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
