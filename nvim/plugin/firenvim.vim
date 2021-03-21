augroup FIRENVIM
    autocmd!
    au BufEnter github.com_*.txt set filetype=markdown
    au BufEnter stackoverflow_*.txt filetype=markdown
augroup end
