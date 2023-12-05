return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "folke/noice.nvim",
            "folke/todo-comments.nvim"
        },
        config = function()
            local bt = require("telescope.builtin")
            local function find_another_file()
                local path = vim.fn.input('Enter a path: ', vim.fn.getcwd(), 'dir')
                bt.find_files({ cwd = path })
            end
            vim.keymap.set("n", "<M-p>", [[<Cmd>Telescope find_files<CR>]], OPTS)
            vim.keymap.set("n", "<C-M-p>", [[<Cmd>Telescope live_grep<CR>]], OPTS)
            vim.keymap.set("n", "<F1>", [[<Cmd>Telescope help_tags<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gk", [[<Cmd>Telescope keymaps<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gh", [[<Cmd>Telescope highlights<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gR", [[<Cmd>Telescope registers<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gb", [[<Cmd>Telescope buffers<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gg", [[<Cmd>Telescope git_status<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gc", [[<Cmd>Telescope git_commits<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gr", [[<Cmd>Telescope lsp_references<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gs", [[<Cmd>Telescope lsp_document_symbols<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gS", [[<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gd", [[<Cmd>Telescope lsp_diagostics<CR>]], OPTS)
            vim.keymap.set("n", "<F12>", [[<Cmd>Telescope noice<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gt", [[<Cmd>telescope todo-comments<CR>]], OPTS)
            vim.keymap.set("n", "<leader>gf", find_another_file, OPTS)
        end,
    }
}
