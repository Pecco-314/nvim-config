-- 编码
vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8"

-- 行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 缩进
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- 搜索时使用智能大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 禁止自动换行
vim.opt.wrap = false

-- 光标移动
vim.opt.whichwrap = "h,l,<,>,[,]"

-- 高亮当前行
vim.opt.cursorline = true

-- 让光标和屏幕保持一定距离
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- 自动切换工作目录
vim.opt.autochdir = true

-- 使用真彩色
vim.opt.termguicolors = true

-- 设置leader
vim.g.mapleader = " "

-- 使用最新的RE引擎
vim.opt.regexpengine = 2

-- 设置conceal等级
vim.opt.conceallevel = 2
