return {
    {
        'zbirenbaum/copilot-cmp',
        event = "VeryLazy",
        dependencies = {
            'zbirenbaum/copilot.lua',
            'hrsh7th/nvim-cmp',
        },
        config = function()
            require('copilot_cmp').setup()
        end,
    }
}
