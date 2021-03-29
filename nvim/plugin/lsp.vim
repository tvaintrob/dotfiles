" LSP Related config

set completeopt=menuone,noinsert
set shortmess+=c

" let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_confirm_key = ""
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_smart_case = 1

imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
            \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

imap <silent> <c-space> <Plug>(completion_trigger)
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use K to show documentation in preview window.
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<cr>

nnoremap <silent><leader>ac <cmd>lua require('lspsaga.codeaction').code_action()<cr>
vnoremap <silent><leader>ac <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<cr>

nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<cr>

" Change gutter signs
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=
sign define LspDiagnosticsSignError text=  texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=  texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=  texthl=LspDiagnosticsSignInformation linehl= numhl=

augroup LSPSAGA
    autocmd!
    autocmd FileType help nnoremap <buffer> K :h <cword><cr>
    autocmd BufEnter * lua require'completion'.on_attach()
augroup end
