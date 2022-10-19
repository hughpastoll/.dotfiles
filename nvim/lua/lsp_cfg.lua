-- Tell LSP server what functionality it should expect
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Connect to server and configure attachment to buffer
require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities,
    on_attach = function() 
        -- Note: :help vim.lsp.buf gives function options
        -- Rename symbol
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
        -- Get info on symbol (put on jump stack - ctrl+o to revert)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        -- Go to definition (put on tag stack - ctrl+t to revert)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        -- Go to Type definition (put on tag stack - ctrl+t to revert)
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        -- Go to Implementation (put on tag stack - ctrl+t to revert)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        -- Non-lsp specific
        -- Go to next error
        vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
        -- Go to previous error
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    end,
} 

