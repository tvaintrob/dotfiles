let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
let g:neoformat_only_msg_on_error = 1

let g:neoformat_enabled_python = ['black', 'docformatter']
let g:neoformat_enabled_lua = ['luafmt']
let g:neoformat_enabled_xml = ['prettier']
let g:neoformat_enabled_yaml = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_less = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']

nnoremap <leader>f :Neoformat<cr>


" augroup FORMATTERS
"     autocmd!
"     autocmd BufWritePre * undojoin | Neoformat
" augroup end
