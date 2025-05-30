return {
  { -- Autoformat
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_fallback = false })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = true,
      format_on_save = true,
      formatters_by_ft = {
        lua = { "prettierd" },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { { "prettier" } },
        vue = { { "prettier" } },
        php = { { "pint", "php-cs-fixer" } },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
