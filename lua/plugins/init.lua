-- Use a protected call so config wont break
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Problems with PLUGINS-CONFIG")
	return
end
-- Autocommand that reloads Nvim when you save this file.
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
	"BufWritePost",
	{ command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)
local impatient = require("impatient")
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost init.lua source <afile> | PackerSync
--   augroup end
-- ]])
-- Have Packer use a PopUp window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})
-- Install your plugins here
return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({ "lewis6991/impatient.nvim" })
	use({ "nvim-lua/plenary.nvim" })
	use({ "EdenEast/nightfox.nvim" })
	use({ "junegunn/fzf.vim" })
	-- use({ "tpope/vim-surround" })
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = "require('treesitter-config')" })
	use({ "nvim-treesitter/playground" })
	use({ "nvim-treesitter/nvim-treesitter-refactor" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "lewis6991/spellsitter.nvim", config = "require('spellsitter-config')" })
	use({ "lewis6991/hover.nvim", config = "require('hover-config')" })
	use({ "nvim-lualine/lualine.nvim", config = "require('lualine-config')" })
	use({ "akinsho/bufferline.nvim", config = "require('bufferline-config')" })
	use({ "kyazdani42/nvim-tree.lua", config = "require('nvimtree-config')" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "p00f/nvim-ts-rainbow" })
	use({ "windwp/nvim-autopairs", config = "require('autopairs-config')" })
	use({ "folke/zen-mode.nvim", config = "require('zen-mode-config')" })
	use({ "folke/twilight.nvim", config = "require('twilight-config')" })
	use({ "folke/trouble.nvim", config = "require('trouble-config')" })
	use({ "folke/which-key.nvim", config = "require('which-key-config')" })
	use({ "nvim-telescope/telescope.nvim", config = "require('telescope-config')" })
	use({ "ahmedkhalf/project.nvim", config = "require('project-config')" })
	use({ "tami5/sqlite.lua" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-symbols.nvim" })
	use({ "nvim-telescope/telescope-media-files.nvim" })
	use({ "nvim-telescope/telescope-packer.nvim" })
	use({ "nvim-telescope/telescope-dap.nvim" })
	use({ "nvim-telescope/telescope-frecency.nvim" })
	use({ "benfowler/telescope-luasnip.nvim", module = "telescope._extensions.luasnip" })
	use({ "sudormrfbin/cheatsheet.nvim" })
	use({ "neovim/nvim-lspconfig", config = "require('lsp')" })
	use({ "github/copilot.vim" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "L3MON4D3/LuaSnip" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "rafamadriz/friendly-snippets" })
	use({ "onsails/lspkind-nvim" })
	use({ "yamatsum/nvim-cursorline" })
	use({ "mfussenegger/nvim-dap", config = "require('dap-config')" })
	use({ "mfussenegger/nvim-dap-python" })
	--lsp_signatureuse({ "ray-x/lsp_signature.nvim", config = "require('lsp_signature-config')" })
	use({ "ggandor/leap.nvim", config = "require('leap-config')" })
	use({ "ur4ltz/surround.nvim", config = "require('surround-config')" })
	use({ "vimwiki/vimwiki", config = "require('vimwiki-config')" })
	use({ "norcalli/nvim-colorizer.lua", config = "require('colorizer-config')" })
	use({ "lewis6991/gitsigns.nvim", config = "require('gitsigns-config')" })
	use({ "lukas-reineke/indent-blankline.nvim", config = "require('blankline-config')" })
	use({ "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" })
	use({ "terrortylor/nvim-comment", config = "require('comment-config')" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "tami5/lspsaga.nvim", config = "require('lspsaga-config')" })
	use({ "jose-elias-alvarez/null-ls.nvim", config = "require('null-ls-config')" })
	use({ "williamboman/nvim-lsp-installer" })
	use({ "is0n/jaq-nvim", config = "require('jaq-config')" })
  use({ "ellisonleao/glow.nvim", branch = 'main' })
	use({ "metakirby5/codi.vim" })
	use({ "dbeniamine/cheat.sh-vim" })
end)
