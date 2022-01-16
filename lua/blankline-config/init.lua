local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	print("Problems with BLANKLINE-CONFIG")
end

indent_blankline.setup({
	buftype_exclude = { "terminal", "man", "nofile" },
	filetype_exclude = { "help", "NvimTree", "packer", "man", "lspinfo" },
	show_current_context = true,
	use_treesitter = true,

	context_patterns = {
		"class",
		"return",
		"function",
		"method",
		"^if",
		"^while",
		"jsx_element",
		"^for",
		"^object",
		"^table",
		"block",
		"arguments",
		"if_statement",
		"else_clause",
		"jsx_element",
		"jsx_self_closing_element",
		"try_statement",
		"catch_clause",
		"import_statement",
		"operation_type",
	},
})
