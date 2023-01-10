local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		clone_timeout = 300, -- Timeout, in seconds, for git clones
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use({ "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" })
	use({ "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" })
	use({ "nvim-tree/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" })
	use({ "nvim-tree/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" })
	use({ "famiu/bufdelete.nvim", commit = "e88dbe0ba5829119d8edb5fc69d3c8553e324a93" })
	use({ "max397574/better-escape.nvim", commit = "d5ee0cef56a7e41a86048c14f25e964876ac20c1" })
	use({ "nvim-lualine/lualine.nvim", commit = "a52f078026b27694d2290e34efa61a6e4a690621" })
	use({ "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" })
	use({ "RRethy/vim-illuminate", commit = "a2e8476af3f3e993bb0d6477438aad3096512e42" })
	use({ "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" })
	use({ "NvChad/nvim-colorizer.lua", commit = "9dd7ecde55b06b5114e1fa67c522433e7e59db8b" })
	use({ "axelvc/template-string.nvim", commit = "84e50b878caa92100c65deec12ccb41aa4ef3fae" })
	use({ "Darazaki/indent-o-matic", commit = "68f19ea15da7e944e7a5c848831837d2023b4ac2" })

	-- Mini
	use({ "echasnovski/mini.nvim", branch = "stable" })

	-- Colorscheme
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "catppuccin/nvim", as = "catppuccin", commit = "c4f0f1a88304378cb76ac0a0c00a99f6d58f972f" })

	-- Cmp plugins
	use({ "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" })
	use({ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" })
	use({ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" })
	use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" })
	use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
	use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })

	-- Snippets
	use({ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" })
	use({ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" })

	-- LSP
	use({ "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" })
	use({ "williamboman/mason.nvim", commit = "bfc5997e52fe9e20642704da050c415ea1d4775f" })
	use({ "williamboman/mason-lspconfig.nvim", commit = "d2bcb38523a7f602e01ca0425ec44f4081362fb9" })
	use({ "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" })

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac" })
	use({ "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "32d9627123321db65a4f158b72b757bcaef1a3f4" })
	use({ "lukas-reineke/indent-blankline.nvim", commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" })
	use({ "windwp/nvim-ts-autotag", commit = "fdefe46c6807441460f11f11a167a2baf8e4534b" })

	-- Git
	use({ "lewis6991/gitsigns.nvim", commit = "f98c85e7c3d65a51f45863a34feb4849c82f240f" })

	-- Toggleterm
	use({ "akinsho/toggleterm.nvim", commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
