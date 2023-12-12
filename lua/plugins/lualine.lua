return {
    {
        'nvim-lualine/lualine.nvim',
        event = 'BufEnter',
        config = function()
            require('lualine').setup()
        end
    }
}
