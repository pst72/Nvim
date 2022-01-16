local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	print("Problems with BUFFERLINE-CONFIG")
end

bufferline.setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "center",
			},
		},
	},
})
vim.cmd([[
nnoremap <silent><Tab> :BufferLineCycleNext<CR>
nnoremap <silent><S-Tab> :BufferLineCyclePrev<CR>
]])
