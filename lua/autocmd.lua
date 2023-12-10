local util = require('util')

function _G.openPopupHelp()
    -- 判断是否是帮助文档
    if vim.bo.filetype ~= 'help' then return end
    local bufnr = vim.api.nvim_get_current_buf()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
    util.popup({ bufnr = bufnr })
end

-- 拦截帮助文档
vim.cmd([[autocmd BufEnter * lua openPopupHelp()]])
