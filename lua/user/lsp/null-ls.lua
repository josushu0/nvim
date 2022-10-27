local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
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
		}),
	},
})
