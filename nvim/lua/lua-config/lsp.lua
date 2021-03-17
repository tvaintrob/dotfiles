local lspconfig = require('lspconfig')
local completion = require('completion')

local sumneko_root_path = '/usr/local/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/macOS/lua-language-server"

lspconfig.sumneko_lua.setup {
    on_attach = completion.on_attach,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
}

lspconfig.tsserver.setup({ on_attach = completion.on_attach })
lspconfig.pyright.setup({ on_attach = completion.on_attach })
lspconfig.cssls.setup({ on_attach = completion.on_attach })
lspconfig.jsonls.setup({ on_attach = completion.on_attach, filetypes = { 'json', 'jsonc'} })

-- setup diagnostics customizations
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = { spacing = 4, prefix = '▸' }
  }
)
