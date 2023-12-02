return {
    {
        "lspsaga/nvim-lspconfig",
        config = function()
            vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, OPTS)
            vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, OPTS)
        end
    }
}
