require("flow").setup({
	transparent = false, -- Set transparent background.
	fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
	mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
	aggressive_spell = false, -- Display colors for spell check.
})

function ColorMyPencils(color)
	-- color = color or "rose-pine"
	-- color = color or "kanagawa-wave"
	color = color or "flow"
	vim.cmd.set("termguicolors")
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

local colorschemes = { "rose-pine", "kanagawa", "rose-pine-moon", "flow", "nord" }
local current_index = 1

function CycleColorscheme()
	-- Set the colorscheme
	vim.cmd("colorscheme " .. colorschemes[current_index])

	-- Increment the index, and reset if it's beyond the last colorscheme
	current_index = current_index + 1
	if current_index > #colorschemes then
		current_index = 1
	end
end

-- Map the function to a key (e.g., <leader>c)
vim.api.nvim_set_keymap("n", "<leader>c", ":lua CycleColorscheme()<CR>", { noremap = true, silent = true })

ColorMyPencils("rose-pine")
