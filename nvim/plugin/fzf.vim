" let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'

" let g:fzf_layout = { 
"     \ 'window': { 
"         \ 'width': 0.9, 
"         \ 'height': 0.8, 
"     \ }}

" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--prompt=Files > ']}), <bang>0)

" nnoremap <C-f> :Rg<cr>
" nnoremap <C-p> :Files<cr>
