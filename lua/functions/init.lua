-- Additional Functions
local M = {}

local toBool = {
	["1"] = true,
	["0"] = false,
}

function M.toggleFoldCol()
	if toBool[vim.api.nvim_win_get_option(0, "foldcolumn")] then
		vim.opt.foldcolumn = "0"
	else
		vim.opt.foldcolumn = "1"
	end
	require("notify")(
		"foldcolumn is set to "
			.. vim.api.nvim_win_get_option(0, "foldcolumn", "info", { title = "Window Option Toggled:" })
	)
end
return M
