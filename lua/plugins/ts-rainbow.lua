return {
    {
        "p00f/nvim-ts-rainbow",
        event = "VeryLazy",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-treesitter.configs").setup({
                rainbow = {
                    enable = true,
                    extended_mode = true,
                }
            })
        end
    }
}
