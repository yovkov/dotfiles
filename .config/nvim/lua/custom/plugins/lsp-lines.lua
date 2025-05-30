-- lsp_lines is a simple neovim plugin that renders diagnostics using virtual lines on top of the real line of code instead of at end of line.
return {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
}
