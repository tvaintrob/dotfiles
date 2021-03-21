" LSP Related config

set completeopt=menuone,noselect
set shortmess+=c

imap <silent> <c-space> <Plug>(completion_trigger)
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use K to show documentation in preview window.
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<cr>

nnoremap <silent><leader>ac <cmd>lua require('lspsaga.codeaction').code_action()<cr>
vnoremap <silent><leader>ac <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<cr>

nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<cr>

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" Change gutter signs
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=
sign define LspDiagnosticsSignError text=  texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=  texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=  texthl=LspDiagnosticsSignInformation linehl= numhl=

augroup LSPSAGA
    autocmd!
    " autocmd FileType LspSagaCodeAction nnoremap <buffer> <esc> :q<cr>
    autocmd FileType help nnoremap <buffer> K :h <cword><cr>
augroup end
