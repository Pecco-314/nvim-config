return {
    {
        "lewis6991/gitsigns.nvim",
        event = "BufRead",
        config = function()
            require("gitsigns").setup()
            local gs = require("gitsigns")
            vim.keymap.set("n", "<leader>ha", gs.stage_hunk, OPTS)
            vim.keymap.set("n", "<leader>hA", gs.stage_buffer, OPTS)
            vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, OPTS)
            vim.keymap.set('v', '<leader>ha', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, OPTS)
            vim.keymap.set('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end, OPTS)
            vim.keymap.set("n", "<leader>hr", gs.reset_hunk, OPTS)
            vim.keymap.set("n", "<leader>hR", gs.reset_buffer, OPTS)
            vim.keymap.set("n", "<leader>hp", gs.preview_hunk_inline, OPTS)
            vim.keymap.set("n", "<leader>hP", gs.preview_hunk, OPTS)
            vim.keymap.set("n", "<leader>hb", gs.blame_line, OPTS)
            vim.keymap.set('n', '<leader>hd', gs.diffthis, OPTS)
            vim.keymap.set('n', '<leader>hD', function() gs.diffthis('~') end, OPTS)
            vim.keymap.set('n', ']h', function() gs.next_hunk {wrap = false} end, OPTS)
            vim.keymap.set('n', '[h', function() gs.prev_hunk {wrap = false} end, OPTS)
        end,
    }
}
