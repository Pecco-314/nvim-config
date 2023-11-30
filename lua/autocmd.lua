function _G.setTerminalKeymaps()
    local opts = {buffer = 0, silent = true}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<M-o>', [[<Cmd>NvimTreeFocus<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua setTerminalKeymaps()')
