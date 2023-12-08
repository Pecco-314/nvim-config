local M = {}

function M.operator(func, opts)
    local function adapter()
        return func(opts)
    end
    _G.operatorfunc_adapter = adapter
    vim.go.operatorfunc = "v:lua.operatorfunc_adapter"
    vim.api.nvim_feedkeys("g@", "n", false)
end

function M.split(text, sep)
    local list = {}
    for str in text:gmatch("[^" .. sep .. "]+") do
        table.insert(list, str)
    end
    return list
end

function M.tolist(text)
    local list = {}
    for char in text:gmatch(".") do
        table.insert(list, char)
    end
    return list
end

M.REGS = [[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.:+-*/#="]]

return M
