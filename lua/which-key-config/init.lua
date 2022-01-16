local wk = require("which-key")
wk.setup({
	plugins = {
		marks = false,
		registers = false,
		spelling = { enabled = true, suggestions = 20 },
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = true,
			g = true,
		},
	},
})
local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end
local toggle_lazygit = function()
	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
	return lazygit:toggle()
end
local toggle_python = function()
	local python = Terminal:new({ cmd = "python", direction = "float" })
	return python:toggle()
end
local toggle_lua = function()
	local lua = Terminal:new({ cmd = "lua", direction = "float" })
	return lua:toggle()
end
local mappings = {
	q = { ":q<cr>", "Quit" },
	Q = { ":wq<cr>", "Save & Quit" },
	w = { ":w<cr>", "Save" },
	c = { ":CommentToggle<cr>", "Comment Lines" },
	-- cl = { ":CommentToggle<cr>", "Comment Lines" },
	x = { ":bdelete<cr>", "Close" },
	E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
	l = {
		name = "LSP",
		i = { ":LspInfo<cr>", "Connected Language Servers" },
		s = { "<cmd>Lspsaga signature_help<cr>", "Signature Help" },
		f = { "<cmd>Lspsaga lsp_finder<cr>", "Finder Help" },
		k = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
		p = { "<cmd>Lspsaga preview_definition<cr>", "Preview Definition" },
		w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
		W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder" },
		l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List Workspace Folders" },
		t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		R = { "<cmd>Lspsaga rename<cr>", "Rename" },
		a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics" },
		E = { ":Telescope diagnostics<cr>", "Show Buffer Diagnostics" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
	},
	f = {
		name = "FIND",
		f = { ":Telescope find_files<cr>", " Find Local Files" },
		b = { ":Telescope buffers<cr>", " Find Buffers" },
		e = { ":Telescope find_files cwd=~/.config/nvim<cr>", " Find Nvim Config Files" },
		o = { ":Telescope oldfiles<cr>", " Find Recent Files" },
		l = { ":Telescope current_buffer_fuzzy_find<cr>", " Search Local Buffer" },
		r = { ":Telescope registers<cr>", " Find Registers" },
		k = { ":Telescope keymaps<cr>", " Find Key Maps" },
		c = { ":Telescope commands<cr>", " Find Commands" },
		H = { ":Telescope command_history<cr>", " Find Command History" },
		j = { ":Telescope jumplist<cr>", " Find JumpList" },
		s = { ":Telescope spell_suggest<cr>", " Find Spelling" },
		m = { ":Telescope man_pages<cr>", " Find Man Pages" },
		M = { ":Telescope marks<cr>", " Find Marks" },
		T = { ":Telescope tags<cr>", " Find Tags" },
		t = { ":Telescope current_buffer_tags<cr>", " Find Local Tags" },
		h = { ":Telescope help_tags<cr>", " Find Help Tags" },
		g = { ":Telescope live_grep<cr>", " Live Grep" },
		p = { ":Telescope projects<cr>", " Find Projects" },
	},
	t = {
		name = "TERMINAL",
		s = { ":ToggleTerm<cr>", "Split Below" },
		t = { toggle_float, "Floating Terminal" },
		g = { toggle_lazygit, "LazyGit" },
		p = { toggle_python, "Python" },
		l = { toggle_lua, "Lua" },
	},
	a = {
		name = "CHANGE",
		c = { ":Telescope colorscheme<cr>", " Find Colorscheme" },
		r = { ":Telescope resume<cr>", "Resume Last Search" },
		b = { ":Telescope builtin<cr>", "Search Builtin Telescope " },
		v = { ":Telescope vim_options<cr>", " Find Vim Options" },
		s = { ":Telescope symbols<cr>", " Find Symbols" },
		f = { ":Telescope frecency<cr>", " Find Frequent Files" },
		p = { ":TSPlaygroundToggle<cr>", " Playground" },
		h = { ":TSHighlightCapturesUnderCursor<cr>", " Highlight Under Cursor" },
	},
	p = {
		name = "PACKER",
		i = { ":PackerInstall<cr>", "Install" },
		c = { ":PackerCompile<cr>", "Compile" },
		r = { ":PackerClean<cr>", "Remove Unused Plugins" },
		p = { ":PackerProfile<cr>", "Packer Profile" },
		s = { ":PackerSync<cr>", "Sync" },
		S = { ":PackerStatus<cr>", "Status" },
		u = { ":PackerUpdate<cr>", "Update" },
	},
	n = {
		name = "VIMWIKI",
		w = { ":VimwikiIndex<cr>", "VimWiki" },
		t = { ":VimwikiTabIndex<cr>", "VimWiki New tab" },
		s = { ":VimwikiUISelect<cr>", "Choose Wiki" },
		i = { ":VimwikiDiaryIndex<cr>", "Diary" },
		d = { ":VimwikiDeleteFile<cr>", "Delete Wiki" },
		r = { ":VimwikiRenameFile<cr>", "Rename Wiki" },
		H = { ":Vimwiki2HTMLBrowse<cr>", "Change To Html" },
		S = { ":VimwikiSearchTags<cr>", "Search Tags" },
		f = { ":VWS ", "Search Wiki - ENTER QUERY" },
		T = { ":VimwikiTable<cr>", "Create Table" },
		g = { ":VimwikiGenerateLinks<cr>", "Generate Links" },
		h = { ":Vimwiki2HTML<cr>", "Create HTML" },
		n = { ":VimwikiGoto<cr>", "Create Table" },
		c = { ":VimwikiTOC<cr>", "Create TOC for Wiki" },
	},
	g = {
		name = "GIT",
		s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
		f = { "<cmd>Gitsigns next_hunk<cr>", "Next Hunk" },
		d = { "<cmd>Gitsigns previous_hunk<cr>", "Previous Hunk" },
		u = { "<cmd>GitSigns undo_stage_hunk<cr>", "Undo Stage Hunk" },
		r = { "<cmd>GitSigns reset_hunk<cr>", "Reset Hunk" },
		R = { "<cmd>GitSigns reset_buffer<cr>", "Reset Buffer" },
		p = { "<cmd>GitSigns preview_hunk<cr>", "Preview Hunk" },
		b = { "<cmd>lua require'gitsigns'.blame_line{full=true}<cr>", "Blame" },
		S = { "<cmd>GitSigns stage_buffer<cr>", "Stage Buffer" },
		U = { "<cmd>Gitsigns reset_buffer_index<cr>", "Reset Buffer Index" },
	},
	z = {
		name = "ZEN",
		z = { ":ZenMode<CR>", "Zen Mode" },
		t = { ":Twilight<CR>", "Twilight" },
	},
}
local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
