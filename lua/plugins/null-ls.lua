-- https://github.com/prettier-solidity/prettier-plugin-solidity
return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" }
	},
	event = "BufReadPre",
	config = function()
		local null_ls = require("null-ls")
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		local formatting = null_ls.builtins.formatting
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
		local diagnostics = null_ls.builtins.diagnostics

		null_ls.setup({
			debug = false,
			sources = {
				-- Formatting
				formatting.stylua,
				formatting.eslint.with({
					condition = function(utils)
						return utils.root_has_file({
							".eslintrc.js",
							".eslintrc.cjs",
							".eslintrc.yaml",
							".eslintrc.yml",
							".eslintrc.json",
						})
					end,
					extra_filetypes = { "astro" },
				}),
				formatting.prettier.with({
					condition = function(utils)
						return utils.root_has_file({
							".prettierrc",
							".prettierrc.json",
							".prettierrc.yml",
							".prettierrc.js",
							".prettierrc.cjs",
							"prettier.config.js",
							"prettier.config.cjs",
							".prettierrc.toml",
						})
					end,
					extra_filetypes = { "astro" },
				}),

				-- Diagnostics
				diagnostics.eslint.with({
					condition = function(utils)
						return utils.root_has_file({
							".eslintrc.js",
							".eslintrc.cjs",
							".eslintrc.yaml",
							".eslintrc.yml",
							".eslintrc.json",
						})
					end,
					extra_filetypes = { "astro" },
				}),
			},
		})
	end,
}
