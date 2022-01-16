local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	print("Problems with TOGGLETERM-CONFIG")
end
toggleterm.setup({
	size = 13,
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = "1",
	start_in_insert = true,
	close_on_exit = true,
	persist_size = true,
	direction = "float",
})
