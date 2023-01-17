return {
	"williamboman/mason-lspconfig.nvim",
	version = "*",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "neovim/nvim-lspconfig" },
	},
	event = "BufReadPre",
	config = function()
		local servers = {
			"sumneko_lua",
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
		}

		local settings = {
			ui = {
				border = "none",
				icons = {
					package_installed = "◍",
					package_pending = "◍",
					package_uninstalled = "◍",
				},
			},
			log_level = vim.log.levels.INFO,
			max_concurrent_installers = 4,
		}

		require("mason").setup(settings)
		require("mason-lspconfig").setup({
			ensure_installed = servers,
			automatic_installation = true,
		})

		local opts = {}

		for _, server in pairs(servers) do
			opts = {
				on_attach = require("lsp.handlers").on_attach,
				capabilities = require("lsp.handlers").capabilities,
			}

			server = vim.split(server, "@")[1]

			local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
			if require_ok then
				opts = vim.tbl_deep_extend("force", conf_opts, opts)
			end

			require("lspconfig")[server].setup(opts)
		end
	end,
}
