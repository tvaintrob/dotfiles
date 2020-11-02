" config and bindings for vim's ui

set nowrap
set number
set expandtab
set incsearch
set smartcase
set tabstop=4
set noshowmode
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

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_left_sep = "\uE0BC"
let g:airline_left_alt_sep = "\uE0BD"
let g:airline_right_sep = "\uE0BE"
let g:airline_right_alt_sep = "\uE0BF"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#vista#enabled = 0

let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

highlight Comment cterm=italic gui=italic
autocmd FileType vim,javascript,typescript,javascriptreact,typescriptreact hi Type cterm=italic gui=italic
autocmd FileType json setlocal filetype=jsonc

let g:FoldText_placeholder = '<...>'
let g:FoldText_line = 'L'
let g:FoldText_level = 'Z'
let g:FoldText_whole = 'O'
let g:FoldText_division = '/'
let g:FoldText_multiplication = '*'
let g:FoldText_epsilon = '0'
let g:FoldText_denominator = 25

" set foldmethod=syntax
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldtext=CustomFoldText()

