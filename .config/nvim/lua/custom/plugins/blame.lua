return {
    'FabijanZulj/blame.nvim',
    config = function()
        require('blame').setup({
            vim.api.nvim_set_keymap('n', '<leader>gb', ':BlameToggle<CR>', { noremap = true, silent = true })
        })
    end,
}
