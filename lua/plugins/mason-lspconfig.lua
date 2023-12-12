return {
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim"
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "rust_analyzer",
                    "bashls",
                    "lua_ls",
                    "texlab",
                    "marksman",
                }
            })
            local lspconfig = require("lspconfig")
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
                ["clangd"] = function()
                    lspconfig.clangd.setup {
                        cmd = {
                            "clangd",
                            "--header-insertion=never",
                            "--query-driver=/usr/local/bin/clang",
                            "--all-scopes-completion",
                            "--completion-style=detailed",
                        }
                    }
                end
            })
        end
    }
}
