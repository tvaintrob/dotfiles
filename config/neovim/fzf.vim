" Config and bindings for FZF

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

let g:fzf_layout = {
    \ 'up':'~90%',
    \ 'window': {
        \ 'width': 0.8,
        \ 'height': 0.8,
        \ 'yoffset':0.5,
        \ 'xoffset': 0.5,
        \ 'highlight': 'Todo',
        \ 'border': 'sharp'
        \ }
\ }

let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
\ }

let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

let g:fzf_tags_command = 'ctags -R'

command! Ctrlp execute (len(system('git rev-parse'))) ? ':Files' : ':GFiles'
command! -bang -nargs=* Tags call fzf#vim#tags(<q-args>, { 'options': '--with-nth 1,2' }, <bang>0)


nnoremap <C-f> :Rg<CR>
nnoremap <C-p> :Ctrlp<CR>
nnoremap <leader>ps :Rg<SPACE>
