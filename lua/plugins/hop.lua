return {
    {
        "phaazon/hop.nvim",
        event = "VeryLazy",
        config = function()
            require("hop").setup()
            vim.keymap.set("n", "<F3>", [[<Cmd>HopChar1<CR>]], OPTS)
        end,
    }
}
