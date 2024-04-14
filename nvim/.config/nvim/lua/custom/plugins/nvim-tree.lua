return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
      },
      git = {
        ignore = false
      },
      renderer = {
        icons = {
          show = {
            folder_arrow = false
          }
        },
        indent_markers = {
          enable = true
        }
      },
      view = {
        adaptive_size = true
      }
    }
  end,
}
