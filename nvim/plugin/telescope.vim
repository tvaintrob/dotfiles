" Telescope related config

nnoremap <C-p> :lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>ac :Telescope lsp_code_actions<cr>
