
nnoremap <C-p> :lua require('telescope.builtin').find_files()<cr>
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>ps :lua require('telescope.builtin').lsp_workspace_symbols()<cr>

nnoremap <silent>gd :lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <silent>gr :lua require('telescope.builtin').lsp_references()<cr>

