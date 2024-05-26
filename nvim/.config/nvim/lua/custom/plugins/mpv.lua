return {
    "tamton-aquib/mpv.nvim",
    config=function()
        require("mpv").setup({
            setup_widgets=true,
        })
        vim.api.nvim_set_keymap('n', '<leader><CR>', ':MpvToggle<CR>', { noremap = true, silent = true })
    end,
}
