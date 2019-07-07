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
set mouse=a

call plug#begin('~/.local/share/nvim/plugged')

" initial base
Plug 'blueshirts/darcula'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'                  " colorscheme
Plug 'sheerun/vim-polyglot'             " language support pack
Plug 'tpope/vim-sensible'               " default settings
Plug 'tpope/vim-surround'               " surrounding things
Plug 'tpope/vim-fugitive'               " git workflow
Plug 'tpope/vim-commentary'             " comment lines
Plug 'tpope/vim-repeat'                 " repeat plugin actions
Plug 'editorconfig/editorconfig-vim'    " load .editorconfig files
Plug 'vim-airline/vim-airline'          " replace status bar
Plug 'vim-airline/vim-airline-themes'   " statusbar themes
Plug 'vim-scripts/SyntaxRange'          " multiple syntax in single file
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/echodoc.vim'

let g:echodoc#enable_at_startup = 1

let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:go_fmt_command = "goimports"

Plug 'cohama/lexima.vim'
Plug 'tpope/vim-vinegar'
Plug 'alvan/vim-closetag'

" add support to jsx closing
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_filetypes = '*.html,*.js,*.jsx,*.vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue'

" snippets
Plug 'honza/vim-snippets'

" expand snippets with C-k
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" language features
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'

let g:formatters_javascript = ['prettier']
let g:formatters_typescript = ['prettier']
let g:formatters_python = ['autopep8']

au BufWrite * :Autoformat

call plug#end()

" allow comments in json files
autocmd FileType json syntax match Comment +\/\/.\+$+

" auto sync syntax in vue files, it breaks sometimes
autocmd FileType vue syntax sync fromstart

set background=dark

" force true color
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme darcula

highlight Comment cterm=italic gui=italic

set number
set relativenumber

set clipboard=unnamed   " share system clipboard
set signcolumn=yes
set nohlsearch
set noshowmode
set cursorline

" Coc.nvim configurations

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

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

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
