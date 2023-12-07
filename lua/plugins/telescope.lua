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

            local function inputpath()
                return vim.fn.input('Enter a path: ', vim.fn.getcwd(), 'dir')
            end

            vim.keymap.set("n", "<M-p>", function() bt.find_files({ cwd = vim.fn.getcwd() }) end, OPTS)
            vim.keymap.set("n", "<C-M-p>", bt.live_grep, OPTS)
            vim.keymap.set("n", "<F1>", bt.help_tags, OPTS)
            vim.keymap.set("n", "<M-[>", function() bt.find_files({ cwd = inputpath() }) end, OPTS)
            vim.keymap.set("n", "<C-M-[>", function() bt.live_grep({ cwd = inputpath() }) end, OPTS)
            vim.keymap.set("n", "<leader>gk", bt.keymaps, OPTS)
            vim.keymap.set("n", "<leader>gh", bt.highlights, OPTS)
            vim.keymap.set("n", "<leader>g'", bt.registers, OPTS)
            vim.keymap.set("n", "<leader>gb", bt.buffers, OPTS)
            vim.keymap.set("n", "<M-D>", function() bt.diagnostics({ bufnr = 0 }) end, OPTS)
            vim.keymap.set("n", "<leader>gd", bt.diagnostics, OPTS)
            vim.keymap.set("n", "<leader>gg", bt.git_status, OPTS)
            vim.keymap.set("n", "<leader>gc", bt.git_commits, OPTS)
            vim.keymap.set("n", "<F7>", bt.lsp_definitions, OPTS)
            vim.keymap.set("n", "<F8>", bt.lsp_implementations, OPTS)
            vim.keymap.set("n", "<F9>", bt.lsp_references, OPTS)
            vim.keymap.set("n", "<M-s>", bt.lsp_document_symbols, OPTS)
            vim.keymap.set("n", "<C-M-s>", bt.lsp_dynamic_workspace_symbols, OPTS)
            vim.keymap.set("n", "<leader>gt", ext["todo-comments"].todo, OPTS)
            vim.keymap.set("n", "<F12>", ext["noice"].noice, OPTS)
        end,
    }
}
