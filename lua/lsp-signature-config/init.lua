local status_ok, lsp_sig = pcall(require, "lsp_signature")
if not status_ok then
	print("Problem with LSP-SIGNATURE-CONFIG")
end
lsp_sig.setup({
	bind = true,
	handler_opts = {
		border = "rounded",
	},
})
