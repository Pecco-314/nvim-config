return {
    {
        "ntpeters/vim-better-whitespace",
        event = "BufRead",
        config = function()
            vim.cmd("highlight ExtraWhitespace guibg=#e46767")
            vim.keymap.set('n', '<leader>S', [[<Cmd>StripWhitespace<CR>]], opts)
        end,
    }
}
