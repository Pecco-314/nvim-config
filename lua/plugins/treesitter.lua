return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        config = function()
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                highlight = {
                    enable = true,
                },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                },
                textobjects = {
                    select = {
                        enable = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["a,"] = "@parameter.outer",
                            ["i,"] = "@parameter.inner",
                            ["a;"] = "@statement.outer",
                            ["i;"] = "@statement.inner",
                        }
                    },
                    move = {
                        enable = true,
                    },
                }
            })
        end
    }
}
