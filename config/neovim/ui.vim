set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set incsearch
set cmdheight=2
set updatetime=50
set shortmess+=c
set scrolloff=10
set cursorline
set termguicolors
set background=dark
set conceallevel=0

let ayucolor="dark"
let g:indentLine_char = '▏'
let g:indentLine_first_char = '▏'
let g:indentLine_showFirstIndentLevel = 1
let g:airline#extensions#tabline#enabled = 1

colorscheme ayu

highlight Comment cterm=italic gui=italic

autocmd FileType vim,javascript,typescript,javascriptreact,typescriptreact highlight Type cterm=italic gui=italic
autocmd FileType json setlocal filetype=jsonc
