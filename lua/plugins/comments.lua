return {
    {
        "numToStr/Comment.nvim",
        event = "VeryLazy",
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
        config = function()
            require("Comment").setup()
        end,
    }
}
