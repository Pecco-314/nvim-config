local opt = {silent = true, remap = true}

-- 切换窗口
vim.keymap.set('n', '<M-h>', [[<Cmd>wincmd h<CR>]], opt)
vim.keymap.set('n', '<M-j>', [[<Cmd>wincmd j<CR>]], opt)
vim.keymap.set('n', '<M-k>', [[<Cmd>wincmd k<CR>]], opt)
vim.keymap.set('n', '<M-l>', [[<Cmd>wincmd l<CR>]], opt)

-- 退出窗口
vim.keymap.set('n', '<leader>q', [[<Cmd>q<CR>]], opt)
vim.keymap.set('n', '<leader>Q', [[<Cmd>qa<CR>]], opt)

-- 保存文件并进入普通模式
vim.keymap.set('n', '<C-s>', [[<Cmd>update<CR>]], opt)
vim.keymap.set('i', '<C-s>', [[<Cmd>update<CR><esc>]], opt)
vim.keymap.set('v', '<C-s>', [[<Cmd>update<CR><esc>]], opt)

-- 关闭搜索高亮
vim.keymap.set('n', '<leader>n', [[<Cmd>nohlsearch<CR>]], opt)

-- 终端相关
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opt)
vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opt)
vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], opt)
vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opt)
vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opt)

-- tab缩进
vim.keymap.set('n', '<Tab>', [[>>]], opt)
vim.keymap.set('n', '<S-Tab>', [[<<]], opt)
vim.keymap.set('v', '<Tab>', [[>gv]], opt)
vim.keymap.set('v', '<S-Tab>', [[<gv]], opt)

-- ctrl+/注释
vim.keymap.set('n', '<C-_>', [[gcc]], opt)
vim.keymap.set('i', '<C-_>', [[<C-o>gcc]], opt)
vim.keymap.set('v', '<C-_>', [[gc]], opt)

-- 删除当前行
vim.keymap.set('n', '<C-Del>', [[dd]], opt)

-- shift+方向键选中区域
vim.keymap.set('n', '<S-Up>', [[v<Up>]], opt)
vim.keymap.set('n', '<S-Down>', [[v<Down>]], opt)
vim.keymap.set('n', '<S-Left>', [[v<Left>]], opt)
vim.keymap.set('n', '<S-Right>', [[v<Right>]], opt)
vim.keymap.set('i', '<S-Up>', [[<C-o>v<Up>]], opt)
vim.keymap.set('i', '<S-Down>', [[<C-o>v<Down>]], opt)
vim.keymap.set('i', '<S-Left>', [[<C-o>v<Left>]], opt)
vim.keymap.set('i', '<S-Right>', [[<C-o>v<Right>]], opt)
vim.keymap.set('v', '<S-Up>', [[<Up>]], opt)
vim.keymap.set('v', '<S-Down>', [[<Down>]], opt)
vim.keymap.set('v', '<S-Left>', [[<Left>]], opt)
vim.keymap.set('v', '<S-Right>', [[<Right>]], opt)

-- 全选
vim.keymap.set('n', '<C-a>', [[gg0vG$]], opt)
