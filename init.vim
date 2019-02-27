" NeoVIM config file
"
" Created: 03/07/2018
" Author: Tal Vintrob

" install vim-plug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let mapleader = ','

call plug#begin('~/.local/share/nvim/plugged')

" initial base
Plug 'trevordmiller/nova-vim'           " colorscheme
Plug 'nightsense/cosmic_latte'          " another one
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'sheerun/vim-polyglot'		        " language support pack
Plug 'tpope/vim-sensible'		        " default settings
Plug 'tpope/vim-surround'               " surrounding things
Plug 'editorconfig/editorconfig-vim'	" load .editorconfig files
Plug 'vim-airline/vim-airline'          " replace status bar
Plug 'vim-scripts/SyntaxRange'          " multiple syntax in single file
Plug 'Shougo/context_filetype.vim'

let g:airline_theme = 'cosmic_latte_dark'
let g:airline#extensions#ale#enabled = 1
let g:go_fmt_command = "goimports"

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-vinegar'
Plug 'alvan/vim-closetag'

" add support to jsx closing
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_filetypes = '*.html,*.js,*.jsx,*.vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue'

" snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" expand snippets with C-k
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" autocompletions
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'   " selection UI for lsp
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }

let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands['css'] = ['css-languageserver', '--stdio']
let g:LanguageClient_serverCommands['html'] = ['html-languageserver', '--stdio']
let g:LanguageClient_serverCommands['typescript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['vue'] = ['vls']

nnoremap <leader><leader> :call LanguageClient_contextMenu()<CR>

" linting
Plug 'w0rp/ale'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_linters = {}
let g:ale_fixers = {}
let g:ale_linters['javascript'] = []
let g:ale_linters['javascript.jsx'] = []
let g:ale_linters['python'] = ['flake8']
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['javascript.jsx'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['vue'] = ['prettier']
let g:ale_fixers['python'] = ['black', 'isort']

let g:ale_python_flake8_options = '--max-line-length=88'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

Plug 'sotte/presenting.vim'

call plug#end()

set background=dark
set termguicolors
colorscheme cosmic_latte

set number
set relativenumber

set clipboard=unnamed   " share system clipboard
set signcolumn=yes
