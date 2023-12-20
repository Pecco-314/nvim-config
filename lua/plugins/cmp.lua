return {
    {
        "hrsh7th/nvim-cmp",
        event = "VeryLazy",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "onsails/lspkind.nvim",
            "dcampos/nvim-snippy",
            "dcampos/cmp-snippy",
            "honza/vim-snippets",
        },
        config = function()
            local lspkind = require('lspkind')
            local cmp = require('cmp')
            local snippy = require('snippy')
            cmp.setup({
                snippet = {
                    expand = function(args)
                        snippy.expand_snippet(args.body)
                    end
                },
                mapping = {
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = vim.schedule_wrap(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                        elseif snippy.can_expand_or_advance() then
                            snippy.expand_or_advance()
                        else
                            fallback()
                        end
                    end),
                    ["<S-Tab>"] = vim.schedule_wrap(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
                        elseif snippy.can_jump(-1) then
                            snippy.previous()
                        else
                            fallback()
                        end
                    end),
                    ["<C-e>"] = cmp.mapping.close(),
                },
                sources = {
                    { name = "copilot" },
                    { name = "snippy" },
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                },
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol',
                        maxwidth = 50,
                        ellipsis_char = '...',
                    })
                }
            })
        end,
    }
}
