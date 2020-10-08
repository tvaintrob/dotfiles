" Config and bindings for Coc.nvim

let g:coc_global_extensions = [
    \ 'coc-sh',
    \ 'coc-css',
    \ 'coc-xml',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-yaml',
    \ 'coc-lists',
    \ 'coc-docker',
    \ 'coc-python',
    \ 'coc-vimlsp',
    \ 'coc-actions',
    \ 'coc-prettier',
    \ 'coc-tsserver',
    \ 'coc-marketplace',
    \ ]

" Remap for do codeAction of selected region
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
