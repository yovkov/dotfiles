return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,    -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {
                        waveRed = "#ec5f67",
                    },
                    theme = {
                        wave = {
                            ui = {
                                float = {
                                },
                                bg = "none",
                                bg_gutter = "none",
                            },
                        },
                        lotus = {},
                        dragon = {},
                        all = {}
                    },
                },
                overrides = function(colors) -- add/modify highlights
                    local theme = colors.theme
                    local palette = colors.palette
                    return {
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },

                        -- Save an hlgroup with dark background and dimmed foreground
                        -- so that you can use it where your still want darker windows.
                        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                        -- Popular plugins that open floats will link to NormalFloat by default;
                        -- set their background accordingly if you wish to keep them dark and borderless
                        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        TelescopeTitle = { fg = theme.ui.special, bold = true },
                        TelescopePromptNormal = { bg = "none" },
                        TelescopePromptBorder = { fg = "#ffffff", bg = "none" },
                        TelescopeResultsNormal = { fg = palette.fujiWhite, bg = "none" },
                        TelescopeResultsBorder = { fg = "#ffffff", bg = "none" },
                        TelescopePreviewNormal = { bg = "none" },
                        TelescopePreviewBorder = { fg = "#ffffff", bg = "none" },
                        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

                        -- Change the background color for the visual and search highlights
                        Visual = { bg = "#253C42" },
                        -- Search = { bg = "#25283E" },
                    }
                end,
                theme = "wave",    -- Load "wave" theme when 'background' option is not set
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })
            vim.cmd.colorscheme 'kanagawa'
        end,
    },
}
