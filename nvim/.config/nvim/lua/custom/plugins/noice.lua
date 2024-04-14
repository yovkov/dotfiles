return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
        messages = {
            enabled = true,
            view = "mini",
            view_history = "mini",
        },
        notify = {
            enabled = true,
            view = "mini",
            view_history = "mini",
        },
        views = {
            mini = {
                position = {
                    row = -2,
                    col = "100%",
                    -- col = 0,
                },
                timeout = 4000,
                win_options = {
                    winblend = 0,
                },
                border = {
                    style = "rounded",
                    text = {
                        top = "Messages",
                        top_align = "center",
                    },
                },
            },
        },
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        -- "rcarriga/nvim-notify",
    }
}
