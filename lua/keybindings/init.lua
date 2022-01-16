vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- map("n", "<space>", "<NOP>", { noremap = true, silent = true })

map("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })

map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("v", "<leader>c", ":CommentToggle<CR>", { noremap = true, silent = true })
map("n", "s", "<Plug>Lightspeed_s", { noremap = false, silent = false })
-- Indentation
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })

map("n", "<C-Left>", ":vertical resize +3<CR>", { noremap = true, silent = false })
map("n", "<C-Right>", ":vertical resize -3<CR>", { noremap = true, silent = false })
map("n", "<C-Up>", ":resize -3<CR>", { noremap = true, silent = false })
map("n", "<C-Down>", ":resize +3<CR>", { noremap = true, silent = false })

map("n", "j", "gj", { noremap = true, silent = true })
map("n", "k", "gk", { noremap = true, silent = true })
map("n", "<Down>", "gj", { noremap = true, silent = true })
map("n", "<Up>", "gk", { noremap = true, silent = true })
map("i", "<Down>", "<C-o>gj", { noremap = true, silent = true })
map("i", "<Up>", "<C-o>gk", { noremap = true, silent = true })
-- Centre Focus on middle screen
map("n", "G", "Gzz", { noremap = true, silent = true })
map("n", "n", "nzz", { noremap = true, silent = true })
map("n", "N", "Nzz", { noremap = true, silent = true })
map("n", "}", "}zz", { noremap = true, silent = true })
map("n", "{", "{zz", { noremap = true, silent = true })
-- Move selected text
map("x", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("x", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

map("n", "<F5>", ":setlocal spell!<CR>", { noremap = true, silent = true })
map("n", "<F6>", ":noh<CR>", { noremap = true, silent = true })
map("n", "cd", ":cd %:p:h<CR>", { noremap = true, silent = true })
map("n", "Y", "y$", { noremap = true, silent = true })

--map('i', '<C-U>', '<Esc>viwUea', {noremap = true, silent = true})
--map('n', '<C-U>', 'viwu<Esc>', {noremap = true, silent = true})
-- map('i', '<C-u>', '<Esc>viwuea', {noremap = true, silent = true})
map("n", "<C-u>", "viwu<Esc>", { noremap = true, silent = true })

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
map("n", "<leader>ac", "<cmd>Telescope colorscheme<CR>", { noremap = true, silent = true })
map("n", "<leader>fr", "<cmd>Telescope registers<CR>", { noremap = true, silent = true })
map("n", "<leader>fl", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true })

map("n", "<leader>nw", "<Plug>VimwikiIndex<CR>", { noremap = true, silent = true })

map("i", "<C-k>", "<Plug>fzf-dictionary-open<CR>", { noremap = true, silent = true })
map(
	"n",
	"<C-u>",
	"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
	{ noremap = true, silent = true }
)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", { noremap = true, silent = true })
