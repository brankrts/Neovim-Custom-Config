local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("bluz71/vim-nightfly-guicolors")

	use("christoomey/vim-tmux-navigator")

	use("nvim-lua/plenary.nvim")

	use("szw/vim-maximizer")
	use("nvim-tree/nvim-tree.lua")

	--essential plugins

	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("terrortylor/nvim-comment")

	-- icons

	use("kyazdani42/nvim-web-devicons")

	-- status line
	use("nvim-lualine/lualine.nvim")

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing and installing lsp servers

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- formatting and linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- tree sitter

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({
				with_sycn = true,
			})
		end,
	})

	--auto closing tabs and signs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- git signs plugin
	use("lewis6991/gitsigns.nvim")

	-- tab navigation

	use("romgrk/barbar.nvim")

	-- terminal controls
	--
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	use("Exafunction/codeium.vim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
