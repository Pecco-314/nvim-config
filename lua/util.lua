local M = {}

function M.operator(funcname)
    vim.go.operatorfunc = "v:lua." .. funcname
    return 'g@'
end

function M.split(text)
    local lines = {}
    for line in text:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end
    return lines
end

return M
