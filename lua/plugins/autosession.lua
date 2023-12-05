local function change_nvim_tree_dir()
    local nvim_tree = require("nvim-tree")
    nvim_tree.change_dir(vim.fn.getcwd())
end

return {
    {
        "rmagatti/auto-session",
        config = function()
            require("auto-session").setup {
                log_level = "error",
                auto_session_suppress_dirs = { "~/", "/" },
                 -- TODO: 自动关闭和开启终端
                post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
                pre_save_cmds = { "NvimTreeClose" },
            }
        end
    }
}
