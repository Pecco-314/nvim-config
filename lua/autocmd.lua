local util = require('util')

function _G.openPopupHelp()
    local bufnr = vim.api.nvim_get_current_buf()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
    util.popup({ bufnr = bufnr })
end

-- 拦截帮助文档
vim.cmd([[autocmd FileType help lua openPopupHelp()]])
