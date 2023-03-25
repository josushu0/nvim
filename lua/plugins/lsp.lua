return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lua" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "L3MON4D3/LuaSnip" },
	},
	config = function()
		local lsp = require("lsp-zero").preset({
			name = "recommended",
			manage_nvim_cmp = {
				set_extra_mappings = true,
			},
		})

		lsp.ensure_installed({
			"lua_ls",
			"cssls",
			"html",
			"tsserver",
			"bashls",
			"jsonls",
			"yamlls",
			"astro",
			"marksman",
			"svelte",
			"tailwindcss",
			"volar",
			"taplo",
		})

		lsp.on_attach(function(client, bufnr)
			lsp.default_keymaps({ buffer = bufnr })
			if client.name == "lua_ls" then
				client.server_capabilities.documentFormattingProvider = false
			end
		end)

		require("lspconfig").tailwindcss.setup(require("lsp.settings.tailwindcss"))
		require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

		lsp.setup()
	end,
}
