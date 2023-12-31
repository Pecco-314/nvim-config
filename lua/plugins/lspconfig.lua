return {
    {
        "lspsaga/nvim-lspconfig",
        event = "VeryLazy",
        config = function()
            vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, OPTS)
            vim.keymap.set('n', '<F6>', vim.lsp.buf.declaration, OPTS)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, OPTS)
            vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, OPTS)
            vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, OPTS)
        end
    }
}
