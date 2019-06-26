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

let mapleader = ','

" install plugins
call plug#begin('~/.local/share/nvim/plugged')

" UI & colors
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot' " language pack
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'

" File Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
nmap <leader><leader> :Files<cr>
nmap <leader>t :Tags<cr>

" Source Control
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = ['git']

" Language Features
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" color settings
syntax on
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:onedark_terminal_italics = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
colorscheme onedark

set number
set relativenumber
set signcolumn=yes

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
