return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("trouble").setup()
        vim.keymap.set("n", "<M-d>", "<Cmd>TroubleToggle<CR>")
    end
}
