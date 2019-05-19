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
Plug 'morhetz/gruvbox'                  " another one
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'sheerun/vim-polyglot'		        " language support pack
Plug 'tpope/vim-sensible'		        " default settings
Plug 'tpope/vim-surround'               " surrounding things
Plug 'tpope/vim-fugitive'               " git workflow
Plug 'tpope/vim-commentary'             " comment lines
Plug 'editorconfig/editorconfig-vim'	" load .editorconfig files
Plug 'vim-airline/vim-airline'          " replace status bar
Plug 'vim-scripts/SyntaxRange'          " multiple syntax in single file
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'

let g:echodoc#enable_at_startup = 1

let g:airline_theme = 'gruvbox'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
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
Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'neoclide/coc-neco', { 'for': 'vim' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

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
colorscheme gruvbox

let g:gruvbox_italic=1
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

" Use `[[` and `]]` to navigate diagnostics
nmap <silent> [[ <Plug>(coc-diagnostic-prev)
nmap <silent> ]] <Plug>(coc-diagnostic-next)


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
