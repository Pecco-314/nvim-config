return {
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "moll/vim-bbye",
        },
        config = function()
            require("bufferline").setup({
                options = {
                    mode = 'buffers',
                        offsets = {
                            {filetype = 'NvimTree'}
                        },
                }
            })
            -- 切换缓冲区
            vim.keymap.set('n', '<C-h>', [[<Cmd>BufferLineCyclePrev<CR>]], opt)
            vim.keymap.set('n', '<C-l>', [[<Cmd>BufferLineCycleNext<CR>]], opt)
            -- 关闭缓冲区
            vim.keymap.set('n', '<C-w>', [[<Cmd>Bdelete<CR>]], opt)
        end,
    }
}
