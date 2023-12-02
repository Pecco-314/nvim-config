return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope")
            vim.keymap.set("n", "<C-p>", [[<Cmd>Telescope find_files<CR>]], OPTS)
            vim.keymap.set("n", "<C-M-p>", [[<Cmd>Telescope live_grep<CR>]], OPTS)
            vim.keymap.set("n", "<F1>", [[<Cmd>Telescope help_tags<CR>]], OPTS)
        end,
    }
}
