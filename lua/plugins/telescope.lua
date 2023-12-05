return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "folke/noice.nvim"
        },
        config = function()
            require("telescope")
            vim.keymap.set("n", "<M-p>", [[<Cmd>Telescope find_files<CR>]], OPTS)
            vim.keymap.set("n", "<C-M-p>", [[<Cmd>Telescope live_grep<CR>]], OPTS)
            vim.keymap.set("n", "<F1>", [[<Cmd>Telescope help_tags<CR>]], OPTS)
            vim.keymap.set("n", "<F12>", [[<Cmd>Telescope noice<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gk", [[<Cmd>Telescope keymaps<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gb", [[<Cmd>Telescope buffers<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gg", [[<Cmd>Telescope git_status<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gc", [[<Cmd>Telescope git_commits<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gr", [[<Cmd>Telescope registers<CR>]], OPTS)
        end,
    }
}
