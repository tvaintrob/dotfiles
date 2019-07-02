" NeoVIM config file
"
" Created: 03/07/2018
" Author: Tal Vintrob

let mapleader = ','
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" {{{ Auto install vim-plug and missing plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" auto install plugins
autocmd VimEnter *
            \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall
            \| endif
" }}}
" Plugin Definitions {{{
call plug#begin('~/.local/share/nvim/plugged')

" Core Editor Plugins {{{
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/jsonc.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
" }}}
" Editor Theme Plugins {{{
Plug 'blueshirts/darcula'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline-themes'
" }}}
" Intellisense and Language Features {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'

" Coc Extensions
let g:coc_global_extensions = [
            \'coc-json',
            \'coc-html',
            \'coc-css',
            \'coc-vetur',
            \'coc-tsserver',
            \'coc-python',
            \'coc-vimlsp',
            \'coc-lists',
            \'coc-git',
            \'coc-yank',
            \'coc-snippets',
            \'coc-word',
            \'coc-emoji']
" }}}
" Source Control Plugins {{{
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" }}}

call plug#end()
" }}}

" Theme Settings {{{
syntax on
set termguicolors
set number
set relativenumber
set signcolumn=yes

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
colorscheme darcula

highlight Comment cterm=italic gui=italic
" }}}
" CloseTag Settings {{{
let g:closetag_filetypes = 'html,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_regions = { 'typescript.tsx': 'jsxRegion,tsxRegion', 'javascript.jsx': 'jsxRegion' }
" }}}
" Formatter Settings {{{
autocmd BufWrite * :Autoformat
let g:formatters_python = ['autopep8']
let g:formatters_typescript = ['prettier']
let g:formatters_javascript = ['prettier']
" }}}
" List mappings (files / search / yanks) {{{
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <leader><leader> :CocList files<cr>
nnoremap <silent> <leader>/ :CocList grep<cr>
" }}}
" Setup <Tab> for snippets expantions {{{
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
let g:coc_snippet_prev = '<s-tab>'
" }}}
" Misc Settings {{{
let g:signify_vcs_list = ['git']
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
autocmd BufNewFile,BufRead *.vim setlocal foldmethod=marker
" }}}
