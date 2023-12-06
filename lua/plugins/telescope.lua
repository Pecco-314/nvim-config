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
            local telescope = require("telescope")
            local bt = require("telescope.builtin")
            local ext = telescope.extensions

            local function find_another_file()
                local path = vim.fn.input('Enter a path: ', vim.fn.getcwd(), 'dir')
                bt.find_files({ cwd = path })
            end

            vim.keymap.set("n", "<M-p>", function() bt.find_files({ cwd = vim.fn.getcwd() }) end, OPTS)
            vim.keymap.set("n", "<C-M-p>", bt.live_grep, OPTS)
            vim.keymap.set("n", "<F1>", bt.help_tags, OPTS)
            vim.keymap.set("n", "<leader>gf", find_another_file, OPTS)
            vim.keymap.set("n", "<leader>gk", bt.keymaps, OPTS)
            vim.keymap.set("n", "<leader>gh", bt.highlights, OPTS)
            vim.keymap.set("n", "<leader>g'", bt.registers, OPTS)
            vim.keymap.set("n", "<leader>gb", bt.buffers, OPTS)
            vim.keymap.set("n", "<leader>gd", bt.diagnostics, OPTS)
            vim.keymap.set("n", "<leader>gg", bt.git_status, OPTS)
            vim.keymap.set("n", "<leader>gc", bt.git_commits, OPTS)
            vim.keymap.set("n", "<leader>gr", bt.lsp_references, OPTS)
            vim.keymap.set("n", "<leader>gs", bt.lsp_document_symbols, OPTS)
            vim.keymap.set("n", "<leader>gw", bt.lsp_dynamic_workspace_symbols, OPTS)
            vim.keymap.set("n", "<leader>gt", ext["todo-comments"].todo, OPTS)
            vim.keymap.set("n", "<F12>", ext["noice"].noice, OPTS)
        end,
    }
}
