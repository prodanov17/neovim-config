require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = {
			{
				"buffers",
				max_length = vim.o.columns * 1 / 3, -- Maximum width of buffers component,
				use_mode_colors = true,
				symbols = {
					modified = " ●", -- Text to show when the buffer is modified
					alternate_file = "", -- Text to show when the buffer is an alternate file
					directory = "", -- Text to show when the buffer is a directory
				},
			},
		},

		lualine_b = { "branch", "mode", "diff", "diagnostics" },
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1,
				shorting_target = 40,
				symbols = {
					modified = "",
					readonly = "",
					newfile = "",
					unnamed = "",
				},
			},
		},
		lualine_x = {
			"encoding",
			"fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
