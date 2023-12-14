local util = require('util')

-- 拦截帮助文档并在弹出窗口中打开
function _G.openPopupHelp()
    if vim.bo.filetype ~= 'help' then return end
    local bufnr = vim.api.nvim_get_current_buf()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
    util.popup({ bufnr = bufnr })
end

vim.cmd([[autocmd BufEnter * lua openPopupHelp()]])

-- 自动保存和读取会话
local function sessionFile()
    local escapedInitialCwd = vim.fn.substitute(vim.g.initialCwd, '/', '<SLASH>', 'g')
    return vim.fn.stdpath('data') .. '/sessions/' .. escapedInitialCwd .. ".vim"
end

function _G.loadSession()
    if vim.fn.argc() == 0 then
        vim.g.initialCwd = vim.fn.getcwd()
        local f = sessionFile()
        if vim.fn.filereadable(f) == 1 then
            vim.cmd('source ' .. f)
            vim.cmd('doautocmd BufRead')
            vim.cmd('cd ' .. vim.fn.expand('%:p:h'))
        else
            require("nvim-tree.api").tree.focus()
        end
    end
end

function _G.saveSession()
    vim.cmd('mksession! ' .. sessionFile())
end

vim.cmd([[autocmd VimEnter * lua loadSession()]])
vim.cmd([[autocmd VimLeave * lua saveSession()]])
