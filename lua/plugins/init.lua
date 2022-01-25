-- Use a protected call so config wont break
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Problems with PLUGINS-CONFIG")
	return
end
-- Autocommand that reloads Nvim when you save this file.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])
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
	use({ "nvim-lua/plenary.nvim" })
	use({ "EdenEast/nightfox.nvim", config = "require('nightfox-config')" })
	use({ "junegunn/fzf.vim" })
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = "require('treesitter-config')" })
	use({ "nvim-treesitter/playground" })
	use({ "nvim-treesitter/nvim-treesitter-refactor" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "lewis6991/spellsitter.nvim", config = "require('spellsitter-config')" })
	use({ "nvim-lualine/lualine.nvim", config = "require('lualine-config')" })
	use({ "akinsho/bufferline.nvim", config = "require('bufferline-config')" })
	use({ "kyazdani42/nvim-tree.lua", config = "require('nvimtree-config')" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "p00f/nvim-ts-rainbow" })
	use({ "windwp/nvim-autopairs", config = "require('autopairs-config')" })
	use({ "folke/zen-mode.nvim", config = "require('zen-mode-config')" })
	use({ "folke/twilight.nvim", config = "require('twilight-config')" })
	use({ "folke/which-key.nvim", config = "require('which-key-config')" })
	use({ "nvim-telescope/telescope.nvim", config = "require('telescope-config')" })
	use({ "ahmedkhalf/project.nvim", config = "require('project-config')" })
	use({ "tami5/sqlite.lua" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-symbols.nvim" })
	use({ "nvim-telescope/telescope-packer.nvim" })
	use({ "nvim-telescope/telescope-frecency.nvim" })
	use({ "nvim-telescope/telescope-cheat.nvim" })
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
	use({ "yuki-uthman/vim-fzf-dictionary" })
	use({ "onsails/lspkind-nvim" })
	use({ "yamatsum/nvim-cursorline" })
	--use({ "ray-x/lsp_signature.nvim", config = "require('lsp_signature-config')" })
	use({ "ggandor/lightspeed.nvim" })
	use({ "blackCauldron7/surround.nvim", config = "require('surround-config')" })
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
	use({ "ThePrimeagen/vim-be-good" })
	use({ "dbeniamine/cheat.sh-vim" })
end)
