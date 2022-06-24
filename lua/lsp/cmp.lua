-- Setup nvim-cmp.
local lspkind = require("lspkind")
local luasnip = require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end
vim.g.completeopt = "menu,menuone,noselect"
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- local feedkey = function(key, mode)
-- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
-- end

cmp.setup({
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body)
			-- For `luasnip` user.
			require("luasnip").lsp_expand(args.body)
			-- For `ultisnips` user.
			-- vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		["<C-Down>"] = cmp.mapping.scroll_docs(4),
		["<C-Up>"] = cmp.mapping.scroll_docs(-4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
			end
		end, { "i", "s" }),
	},
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "nvim-lua" },
		{ name = "cmdline" },
	},
	formatting = {
		format = lspkind.cmp_format({ with_text = true, maxwidth = 60 }),
		fields = { "menu", "abbr", "kind" },
		menu = {
			buffer = "[Buf]",
			nvim_lsp = "[LSP]",
			luasnip = "[Snip]",
			nvim_lua = "[Lua]",
			path = "[Path]",
			cmdline = "[CmdL]",
		},
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	},
})
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})
