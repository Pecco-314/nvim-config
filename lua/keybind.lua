OPTS = {silent = true, remap = false}
OPTS_REMAP = {silent = true, remap = true}

-- 切换窗口
vim.keymap.set('n', '<M-h>', [[<Cmd>wincmd h<CR>]], OPTS)
vim.keymap.set('n', '<M-j>', [[<Cmd>wincmd j<CR>]], OPTS)
vim.keymap.set('n', '<M-k>', [[<Cmd>wincmd k<CR>]], OPTS)
vim.keymap.set('n', '<M-l>', [[<Cmd>wincmd l<CR>]], OPTS)
vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], OPTS)
vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], OPTS)
vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], OPTS)
vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], OPTS)

-- 快速滚屏
vim.keymap.set('n', '<PageUp>', [[<C-U>]], OPTS_REMAP)
vim.keymap.set('n', '<PageDown>', [[<C-D>]], OPTS_REMAP)
vim.keymap.set('i', '<PageUp>', [[<C-O><C-U>]], OPTS_REMAP)
vim.keymap.set('i', '<PageDown>', [[<C-O><C-D>]], OPTS_REMAP)
vim.keymap.set('n', '<S-PageUp>', [[zH]], OPTS)
vim.keymap.set('n', '<S-PageDown>', [[zL]], OPTS)
vim.keymap.set('i', '<S-PageUp>', [[<C-O>zH]], OPTS)
vim.keymap.set('i', '<S-PageDown>', [[<C-O>zL]], OPTS)

-- 关闭缓冲区
vim.keymap.set('n', '<C-w>', [[<Cmd>bd<CR>]], OPTS)

-- 关闭搜索高亮
vim.keymap.set('n', '<Backspace>', [[<Cmd>nohlsearch<CR>]], OPTS)

-- tab缩进
vim.keymap.set('v', '<Tab>', [[>gv]], OPTS)
vim.keymap.set('v', '<S-Tab>', [[<gv]], OPTS)

-- ctrl+/注释
vim.keymap.set('n', '<C-_>', [[gcc]], OPTS_REMAP)
vim.keymap.set('i', '<C-_>', [[<C-o>gcc]], OPTS_REMAP)
vim.keymap.set('v', '<C-_>', [[gc]], OPTS_REMAP)

-- shift+方向键选中区域
vim.keymap.set('n', '<S-Up>', [[v<Up>]], OPTS)
vim.keymap.set('n', '<S-Down>', [[v<Down>]], OPTS)
vim.keymap.set('n', '<S-Left>', [[v<Left>]], OPTS)
vim.keymap.set('n', '<S-Right>', [[v<Right>]], OPTS)
vim.keymap.set('i', '<S-Up>', [[<C-o>v<Up>]], OPTS)
vim.keymap.set('i', '<S-Down>', [[<C-o>v<Down>]], OPTS)
vim.keymap.set('i', '<S-Left>', [[<C-o>v<Left>]], OPTS)
vim.keymap.set('i', '<S-Right>', [[<C-o>v<Right>]], OPTS)
vim.keymap.set('v', '<S-Up>', [[<Up>]], OPTS)
vim.keymap.set('v', '<S-Down>', [[<Down>]], OPTS)
vim.keymap.set('v', '<S-Left>', [[<Left>]], OPTS)
vim.keymap.set('v', '<S-Right>', [[<Right>]], OPTS)

-- 撤销和重做
vim.keymap.set('n', '<C-z>', [[<Cmd>undo<CR>]], OPTS)
vim.keymap.set('i', '<C-z>', [[<Cmd>undo<CR>]], OPTS)
vim.keymap.set('n', '<C-y>', [[<Cmd>redo<CR>]], OPTS)
vim.keymap.set('i', '<C-y>', [[<Cmd>redo<CR>]], OPTS)

-- 复制粘贴
vim.keymap.set('n', '<C-v>', [[""P]], OPTS)
vim.keymap.set('i', '<C-v>', [[<C-o>""P]], OPTS)
vim.keymap.set('v', '<C-c>', [[""y]], OPTS)
vim.keymap.set('v', '<C-x>', [[""x]], OPTS)

-- 删除单词
vim.keymap.set('i', '<c-h>', [[<C-o>db]], OPTS)

-- 交换行或块
vim.keymap.set('n', '<M-Down>', [[:m .+1<CR>]], OPTS)
vim.keymap.set('n', '<M-Up>', [[:m .-2<CR>]], OPTS)
vim.keymap.set('v', '<M-Down>', [[:m '>+1<CR>gv]], OPTS)
vim.keymap.set('v', '<M-Up>', [[:m '<-2<CR>gv]], OPTS)

-- 分割窗口
vim.keymap.set('n', '<leader>s', [[<Cmd>vsplit<CR>]], OPTS)
vim.keymap.set('n', '<leader>S', [[<Cmd>split<CR>]], OPTS)

-- 重新读取Buffer
vim.keymap.set('n', '<F5>', [[<Cmd>doautocmd BufRead<CR>]], OPTS)

-- 保存文件，如果为空则输入文件名
function _G.save_file()
    if vim.fn.expand('%') == '' then
        local filename = vim.fn.input('Enter filename: ', vim.fn.expand('%:p:h') .. '/', 'file')
        vim.cmd('write ' .. filename)
    else
        vim.cmd('update')
    end
    vim.cmd('stopinsert')
end
vim.keymap.set('n', '<C-s>', save_file, OPTS)
vim.keymap.set('i', '<C-s>', save_file, OPTS)
vim.keymap.set('v', '<C-s>', save_file, OPTS)

-- 新建文件
vim.keymap.set('n', '<C-n>', [[<Cmd>enew<CR>]], OPTS)

-- 退出窗口
_G.escPressed = false
function _G.triggerEsc()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n')
    if not _G.escPressed then
        _G.escPressed = true
        vim.defer_fn(function()
            _G.escPressed = false
        end, vim.opt.timeoutlen:get())
    else
        vim.cmd("q")
        _G.escPressed = false
    end
end
vim.keymap.set({ 'i', 'v', 'n', 't' }, '<Esc>', triggerEsc, OPTS)
vim.keymap.set('n', '<M-q>', [[<Cmd>qa<CR>]], OPTS)
