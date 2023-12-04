return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup {
                direction = 'horizontal',
                shade_terminals = true,
            }
            local term = require("toggleterm.terminal")

            local function terminal(id)
                id = id or 1
                return term.Terminal:new({
                    id = id,
                    hidden = true,
                    direction = "float",
                    on_create = function(t)
                        t:send("clear")
                    end,
                    on_open = function()
                        vim.cmd("startinsert!")
                    end,
                    float_opts = {
                        border = "curved",
                        width = 120,
                        height = 20,
                        winblend = 3,
                    },
                })
            end

            local lazygit = term.Terminal:new({
                cmd = "lazygit",
                id = 101,
                hidden = true,
                direction = "float",
                on_open = function()
                    vim.cmd("startinsert!")
                end,
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

            local function toggleTerminal(id)
                id = id or 1
                terminal(id):toggle()
            end

            local function toggleTerminalWithInputId()
                local id = vim.fn.nr2char(vim.fn.getchar())
                toggleTerminal(id)
            end

            vim.keymap.set("n", "<M-t>", toggleTerminal, OPTS)
            vim.keymap.set("t", "<M-t>", toggleTerminal, OPTS)
            vim.keymap.set("n", "<leader>t", toggleTerminalWithInputId, OPTS)
            vim.keymap.set("n", "<M-g>", toggleLazygit, OPTS)
            vim.keymap.set("t", "<M-g>", toggleLazygit, OPTS)
        end
    }
}
