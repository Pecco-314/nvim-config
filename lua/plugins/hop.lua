return {
    {
        "phaazon/hop.nvim",
        config = function()
            require("hop").setup()
            vim.keymap.set("n", "<leader>h", [[<Cmd>HopChar1<CR>]], opt)
            vim.keymap.set("n", "<leader>H", [[<Cmd>HopWord<CR>]], opt)
        end,
    }
}
