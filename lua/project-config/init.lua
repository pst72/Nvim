local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end

project.setup({

	manual_mode = false,
	detection_methods = { "lsp", "pattern" },
	show_hidden = false,
	silent_chdir = true,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})

vim.g.nvim_tree_respect_buf_cwd = 1

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

telescope.load_extension("projects")