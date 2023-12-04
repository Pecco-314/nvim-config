OPTS = {silent = true, remap = true}

-- 切换窗口
vim.keymap.set('n', '<M-h>', [[<Cmd>wincmd h<CR>]], OPTS)
vim.keymap.set('n', '<M-j>', [[<Cmd>wincmd j<CR>]], OPTS)
vim.keymap.set('n', '<M-k>', [[<Cmd>wincmd k<CR>]], OPTS)
vim.keymap.set('n', '<M-l>', [[<Cmd>wincmd l<CR>]], OPTS)

-- 退出窗口
vim.keymap.set('n', '<leader>q', [[<Cmd>q<CR>]], OPTS)
vim.keymap.set('n', '<leader>Q', [[<Cmd>qa<CR>]], OPTS)

-- 快速滚屏
vim.keymap.set('n', '<PageUp>', [[<C-U>]], OPTS)
vim.keymap.set('n', '<PageDown>', [[<C-D>]], OPTS)
vim.keymap.set('n', '<S-PageUp>', [[zH]], OPTS)
vim.keymap.set('n', '<S-PageDown>', [[zL]], OPTS)
vim.keymap.set('i', '<PageUp>', [[<C-O><C-U>]], OPTS)
vim.keymap.set('i', '<PageDown>', [[<C-O><C-D>]], OPTS)
vim.keymap.set('i', '<S-PageUp>', [[<C-O>zH]], OPTS)
vim.keymap.set('i', '<S-PageDown>', [[<C-O>zL]], OPTS)

-- 保存文件并进入普通模式
vim.keymap.set('n', '<C-s>', [[<Cmd>update<CR>]], OPTS)
vim.keymap.set('i', '<C-s>', [[<Cmd>update<CR><esc>]], OPTS)
vim.keymap.set('v', '<C-s>', [[<Cmd>update<CR><esc>]], OPTS)

-- 关闭搜索高亮
vim.keymap.set('n', '<leader>n', [[<Cmd>nohlsearch<CR>]], OPTS)

-- 终端相关
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], OPTS)
vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], OPTS)
vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], OPTS)
vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], OPTS)
vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], OPTS)

-- tab缩进
vim.keymap.set('n', '<Tab>', [[>>]], OPTS)
vim.keymap.set('n', '<S-Tab>', [[<<]], OPTS)
vim.keymap.set('v', '<Tab>', [[>gv]], OPTS)
vim.keymap.set('v', '<S-Tab>', [[<gv]], OPTS)

-- ctrl+/注释
vim.keymap.set('n', '<C-_>', [[gcc]], OPTS)
vim.keymap.set('i', '<C-_>', [[<C-o>gcc]], OPTS)
vim.keymap.set('v', '<C-_>', [[gc]], OPTS)

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

-- 全选
vim.keymap.set('n', '<leader>a', [[gg0vG$]], OPTS)

-- 撤销和重做
vim.keymap.set('n', '<C-z>', [[u]], OPTS)
vim.keymap.set('i', '<C-z>', [[<C-o>u]], OPTS)
vim.keymap.set('i', '<C-r>', [[<C-o><C-r>]], OPTS)

-- 复制粘贴
vim.keymap.set('n', '<C-v>', [["+p]], OPTS)
vim.keymap.set('i', '<C-v>', [[<C-o>"+p]], OPTS)
vim.keymap.set('v', '<C-c>', [["+y]], OPTS)
vim.keymap.set('v', '<C-x>', [["+x]], OPTS)

-- 删除单词
vim.keymap.set('i', '<C-h>', [[<C-o>db]], OPTS)
