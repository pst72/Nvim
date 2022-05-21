local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
	print("Problems with GITSIGNS-CONFIG")
end
gitsigns.setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = {
			hl = "GitSignsChange",
			text = "▎",
			numhl = "GitSignsChangeNr",
			linehl = "GitSignsChangeLn",
		},
	},
	signcolumn = true,
	numhl = true,
	linehl = false,
	preview_config = { border = "rounded" },
	keymaps = { noremap = true, buffer = true },
	watch_gitdir = { interval = 1000, follow_files = true },
	sign_priority = 6,
	update_debounce = 200,
	status_formatter = nil,
	current_line_blame = false,
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", opts)
map("v", "<leader>gs", ":Gitsigns stage_hunk<CR>", opts)
map("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>", opts)
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", opts)
map("v", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", opts)
map("v", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gb", "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", opts)
map("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>", opts)
map("n", "<leader>gU", "<cmd>Gitsigns reset_buffer_index<CR>", opts)
