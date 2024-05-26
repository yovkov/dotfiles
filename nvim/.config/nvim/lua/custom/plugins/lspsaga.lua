return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({
            finder = {
                max_height = 0.6,
                left_width = 0.5,
                right_width = 0.5,
                layout = 'normal',
            }
        })
        vim.api.nvim_set_keymap('n', '<leader>gd', ':Lspsaga finder def+ref+imp<CR>', { noremap = true, silent = true })
    end,
}
