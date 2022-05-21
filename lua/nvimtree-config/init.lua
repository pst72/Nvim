local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	print("Problems with NVIMTREE-CONFIG")
end
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_add_trailing = 1 -- 0 by default, append a trailing slash to folder names
-- vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 3
vim.g.nvim_tree_git_hl = 1

nvim_tree.setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	-- filters_custom = { "*.tmp", ".git", "node_modules", ".cache" },
	ignore_ft_on_setup = {},
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = true,
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	system_open = {
		cmd = nil,
		-- the command arguments as a list
		args = {},
	},
})
