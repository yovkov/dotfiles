return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			component_separators = "|",
			section_separators = "",
		},
		sections = {
			lualine_a = {
				"mode",
				"|",
			},
			lualine_b = {
				"branch",
				"diff",
				"|",
				"diagnostics",
				"|",
			},
			lualine_c = {
				{ "filename", path = 1 },
			},
			lualine_x = {
				{
					icon = "🔴",
					function()
						local reg = vim.fn.reg_recording()
						if reg == "" then
							return "" -- Return empty string if not recording
						else
							return "Recording to " .. reg -- Return the recording register if recording
						end
					end,
				},
				"|",
				"filename",
			},
			lualine_y = {
				"filetype",
			},
			lualine_z = {
				"location",
				"progress",
			},
		},
	},
}
