local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local server = { "sumneko_lua", "pyright", "vimls", "bash-ls", "eslint", "prettier" }
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
local opts = { capabilities = capabilities }
if server.name == "sumneko_lua" then
	opts = vim.tbl_deep_extend("force", {
		settings = {
			Lua = {
				runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
				diagnostics = { globals = { "vim" } },
				workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
				telemetry = { enable = false },
			},
		},
	}, opts)
end
if server.name == "python_lsp_server" then
	local python_lsp_server_opts = require("user.lsp.settings.python_lsp_server")
	opts = vim.tbl_deep_extend("force", python_lsp_server_opts, opts)
end
-- server:setup(opts)

require("lspconfig").bashls.setup({ opts })
require("lspconfig").eslint.setup({ opts })
require("lspconfig").tsserver.setup({ opts })
require("lspconfig").pyright.setup({ opts })
require("lspconfig").vimls.setup({ opts })
