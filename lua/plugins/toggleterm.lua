local function focusTerm()
    local ui = require("toggleterm.ui")
    local terms = require("toggleterm.terminal")
    local _, windows = ui.find_open_windows()
    ui.close_and_save_terminal_view(windows)
    if not ui.open_terminal_view() then
        local term_id = terms.get_toggled_id()
        terms.get_or_create_term(term_id):open()
    end
    vim.cmd("startinsert")
end

return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup {
                direction = 'horizontal',
                shade_terminals = true,
            }
            vim.keymap.set("n", "<M-t>", focusTerm, OPTS)
        end
    }
}
