local opt = {silent = true}

-- 切换标签页
vim.keymap.set("n", "<C-h>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
vim.keymap.set("n", "<C-l>", [[<Cmd>BufferLineCycleNext<CR>]], opt)

-- 切换窗口
vim.keymap.set('n', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('n', '<M-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('n', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('n', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)

-- 切换到文件树
vim.keymap.set("n", "<M-o>", [[<Cmd>NvimTreeFocus<CR>]], opt)

-- 关闭buffer
vim.keymap.set("n", "<C-q>", [[<Cmd>Bdelete<CR>]], opt)

-- 保存文件并进入普通模式
vim.keymap.set("n", "<C-s>", [[<Cmd>update<CR>]], opt)
vim.keymap.set("i", "<C-s>", [[<Cmd>update<CR><esc>]], opt)
