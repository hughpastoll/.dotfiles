-- Set up nvim-cmp
local cmp = require('cmp')
local lspkind = require('lspkind')

vim.opt.completeopt = {
    "menu",  "menuone", "noselect",
}

cmp.setup {
    mapping = {
        -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-y>"] = cmp.mapping.confirm({
            -- behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
        ["<C-Space>"] = cmp.mapping.complete(),
    },
    sources = {
        -- { name = "nvim_lua" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "luasnip" },
        { name = "buffer", keyword_length = 5 },
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
            }
        }
    },
    experimental = {
        native_menu = false,
    }
}


