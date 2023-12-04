return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup {
                direction = 'horizontal',
                shade_terminals = true,
            }
            local term = require("toggleterm.terminal")

            local main = term.Terminal:new({
                hidden = true,
                direction = "horizontal",
                on_open = function()
                    vim.cmd("resize 16")
                    vim.cmd("startinsert!")
                end,
            })

            local lazygit = term.Terminal:new({
                cmd = "lazygit",
                hidden = true,
                direction = "float",
                float_opts = {
                    border = "curved",
                    width = 120,
                    height = 40,
                    winblend = 3,
                },
            })

            local function toggleLazygit()
                lazygit:toggle()
            end

            local function toggleMain()
                main:toggle()
            end

            vim.keymap.set("n", "<M-t>", toggleMain, OPTS)
            vim.keymap.set("t", "<M-t>", toggleMain, OPTS)
            vim.keymap.set("n", "<M-g>", toggleLazygit, OPTS)
            vim.keymap.set("t", "<M-g>", toggleLazygit, OPTS)
        end
    }
}
