return {
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        event = "VeryLazy",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-treesitter.configs").setup({
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
                            ["ab"] = "@block.outer",
                            ["ib"] = "@block.inner",
                            ["a?"] = "@conditional.outer",
                            ["i?"] = "@conditional.inner",
                            ["a!"] = "@loop.outer",
                            ["i!"] = "@loop.inner",
                            ["a/"] = "@comment.outer",
                            ["i/"] = "@comment.inner",
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

