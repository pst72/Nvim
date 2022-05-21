local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	print("Problems with TOGGLETERM-CONFIG")
end
toggleterm.setup({
	size = 13,
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	close_on_exit = true,
	persist_size = true,
	direction = "float",
	float_opts = { border = "curved" },
})
-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }
-- map({ "n", "<leader>tt", "<cmd>lua _float_toggle()<cr>", opts })
-- map({ "n", "<leader>tg", "<cmd>lua _lazygit_toggle()<cr>", opts })
-- map({ "n", "<leader>tl", "<cmd>lua _lua_toggle()<cr>", opts })
-- map({ "n", "<leader>tp", "<cmd>lua _python_toggle()<cr>", opts })
