return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup()
            -- 切换到文件树
            vim.keymap.set('n', '<M-o>', [[<Cmd>NvimTreeFocus<CR>]], opt)
            vim.keymap.set('t', '<M-o>', [[<Cmd>NvimTreeFocus<CR>]], opt)
        end
    }
}
