" LSP Related config

set completeopt=menuone,noinsert,noselect
set shortmess+=c

imap <silent> <c-space> <Plug>(completion_trigger)
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Change gutter signs
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=
sign define LspDiagnosticsSignError text=  texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=  texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=  texthl=LspDiagnosticsSignInformation linehl= numhl=
