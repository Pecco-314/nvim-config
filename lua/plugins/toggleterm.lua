return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup {
                direction = 'horizontal',
                shade_terminals = true,
                open_mapping = '<C-g>',
            }
        end
    }
}
