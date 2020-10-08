" config and bindings for vim's ui

set nowrap
set number
set expandtab
set incsearch
set smartcase
set tabstop=4
set cursorline
set smartindent
set scrolloff=10
set shiftwidth=4
set softtabstop=4
set termguicolors
set conceallevel=0
set relativenumber
set background=dark

let g:indentLine_char = '▏'
let g:indentLine_first_char = '▏'
let g:indentLine_showFirstIndentLevel = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#vista#enabled = 0

let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_colorterm = 1

colorscheme gruvbox

highlight Comment cterm=italic gui=italic
autocmd FileType vim,javascript,typescript,javascriptreact,typescriptreact
            \ hi Type cterm=italic gui=italic
autocmd FileType json setlocal filetype=jsonc
autocmd FileType python call CustomPythonHighlights()

function CustomPythonHighlights()
    hi clear semshiImported
    hi semshiImported        ctermfg=214 guifg=#ffaf00
endfunction

let g:FoldText_placeholder = '<...>'
let g:FoldText_line = 'L'
let g:FoldText_level = 'Z'
let g:FoldText_whole = 'O'
let g:FoldText_division = '/'
let g:FoldText_multiplication = '*'
let g:FoldText_epsilon = '0'
let g:FoldText_denominator = 25

set foldmethod=syntax
set foldtext=CustomFoldText()
