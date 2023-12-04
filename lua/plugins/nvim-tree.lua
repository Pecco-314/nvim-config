return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                actions = {
                    open_file = {
                        quit_on_open = true,
                    }
                }
            })
            -- 切换到文件树
            vim.keymap.set('n', '<M-o>', [[<Cmd>NvimTreeFocus<CR>]], OPTS)
            vim.keymap.set('t', '<M-o>', [[<Cmd>NvimTreeFocus<CR>]], OPTS)
        end
    }
}
