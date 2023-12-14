local util = require("util")

local function substitude(opts)
    opts = opts or {}
    local reg = opts.reg or '"'
    local mode = opts.mode or 'n'
    local start, finish, endlinelen
    if mode == 'n' then
        start = vim.api.nvim_buf_get_mark(0, '[')
        finish = vim.api.nvim_buf_get_mark(0, ']')
        endlinelen = #vim.fn.getline(vim.fn.line("']"))
    elseif mode == 'v' or mode == 'V' then
        start = vim.api.nvim_buf_get_mark(0, '<')
        finish = vim.api.nvim_buf_get_mark(0, '>')
        endlinelen = #vim.fn.getline(vim.fn.line("'>"))
        if mode == 'V' then
            start[2] = 0
            finish[2] = endlinelen
        end
    else
        vim.notify('cannot substitude in mode ' .. mode, vim.log.levels.WARN)
        return
    end
    if finish[2] >= endlinelen then
        finish[2] = endlinelen - 1
    end
    if start[1] > finish[1] then -- textobj-line选中空行时会出现这种情况
        finish[1] = start[1]
        finish[2] = start[2] - 1
    end
    local bufid = vim.fn.bufnr()
    local newtext = vim.fn.getreg(reg)
    local newtexttable = util.split(newtext, '\n')
    vim.api.nvim_buf_set_text(bufid, start[1] - 1, start[2], finish[1] - 1, finish[2] + 1, newtexttable)
end

vim.keymap.set('n', 's', function() return util.operator(substitude) end, OPTS)
vim.keymap.set('v', 's', function() return util.operator(substitude, { mode = vim.fn.mode() }) end, OPTS)

for _, reg in ipairs(util.tolist(util.REGS)) do
    vim.keymap.set('n', '"' .. reg .. 's', function() return util.operator(substitude, { reg = reg }) end, OPTS)
    vim.keymap.set('v', '"' .. reg .. 's',
        function() return util.operator(substitude, { reg = reg, mode = vim.fn.mode() }) end, OPTS)
end
