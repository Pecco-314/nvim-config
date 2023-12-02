return {
    {
        "phaazon/hop.nvim",
        config = function()
            require("hop").setup()
            vim.keymap.set("n", "<leader>h", [[<Cmd>HopChar1<CR>]], OPTS)
            vim.keymap.set("n", "<leader>H", [[<Cmd>HopWord<CR>]], OPTS)
        end,
    }
}
