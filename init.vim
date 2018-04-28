" NeoVIM Config
" Tal Vintrob, 2017
"
" Mostly sensible settings, nothing too complicated

source ~/.config/nvim/plugins.vim

syntax on
colorscheme nova
let g:airline_theme = "nova"

let mapleader = ','

let g:closetag_filenames = "*.html,*.jsx,*.js,*.tsx"    " Enable closetag for html/jsx
let g:deoplete#enable_at_startup = 1                    " Enable deoplete

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands['javascript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['typescript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['css'] = ['css-languageserver', '--stdio']
let g:LanguageClient_serverCommands['scss'] = ['css-languageserver', '--stdio']
let g:LanguageClient_serverCommands['sass'] = ['css-languageserver', '--stdio']

let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

let g:ale_linters = { 'typescript': ['tslint', 'tsserver', 'typecheck'] }

let g:formatdef_prettier = '"prettier --print-width 80 --tab-width 2 --single-quote"'
let g:formatdef_prettier_ts = '"prettier --print-width 80 --tab-width 2 --single-quote --parser typescript"'
let g:formatters_javascript = ['prettier']
let g:formatters_typescript = ['prettier_ts']

" Auto format on save
autocmd BufWrite * :Autoformat
autocmd FileType make let b:autoformat_retab = 0

" clear highlights with space
noremap <space> :set hlsearch! hlsearch?<cr>

" enable the . command in visual mode
vnoremap . :normal .<cr>

imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_or_jump)

set nocompatible        " no need for vi
set autoread            " auto detect file changes
set history=1000        " history is important
set hidden              " hide buffers instead of closing

set textwidth=150       " sensible text width
set wrap                " wrap text
set wrapmargin=8        " wrap 8 chars from the side
set linebreak           " soft wraping

set number              " show line numbers
set relativenumber      " show relative lines

set autoindent          " auto indent next line
set smartindent         " smart indent for c-like programs

set updatetime=100      " each 100 miliseconds without action, flush to swp

set completeopt+=noinsert   " recommend completions
set completeopt-=preview    " disable preview window

set foldmethod=syntax       " indent based folding
set foldnestmax=10          " max 10 folds
set nofoldenable            " dont fold by default

set clipboard=unnamed       " use system clipboard
set scrolloff=7             " show 7 lines above and below the cursor

set noshowmode

set noerrorbells        " dont make sounds
set visualbell          " show visuals

set ignorecase          " case insensitive search
set smartcase           " case sensitive if using capitalized
set hlsearch            " highlight search
set incsearch           " highlight as i type

set showmatch           " show matching braces
set matchtime=2         " blink for 2 tenths of a second

set wildmenu            " better command line completion
set showcmd             " show cmd as i type

set cursorline      " highlight current line

