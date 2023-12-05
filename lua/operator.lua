local util = require("util")

function _G.substitude()
    local start = vim.api.nvim_buf_get_mark(0, '[')
    local finish = vim.api.nvim_buf_get_mark(0, ']')
    local bufid = vim.fn.bufnr()
    local newtext = vim.fn.getreg('"')
    local newtexttable = util.split(newtext)
    vim.api.nvim_buf_set_text(bufid, start[1] - 1, start[2], finish[1] - 1, finish[2] + 1, newtexttable)
end

vim.keymap.set('n', 's', util.operator("substitude"), OPTS)
