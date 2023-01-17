return {
	"nvim-treesitter/nvim-treesitter",
	commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	build = ":TSUpdate",
	event = "BufReadPost",
	config = function()
		require("nvim-treesitter").setup()
		require("nvim-treesitter.configs").setup({
			-- ensure_installed = "all", -- one of "all" or a list of languages
			ensure_installed = {
				"lua",
				"markdown",
				"markdown_inline",
				"bash",
				"astro",
				"comment",
				"css",
				"fish",
				"gitignore",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"scss",
				"svelte",
				"toml",
				"typescript",
				"tsx",
				"vue",
				"yaml",
			},
			ignore_install = { "" }, -- List of parsers to ignore installing
			sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

			highlight = {
				enable = true, -- false will disable the whole extension
				disable = {}, -- list of language that will be disabled
			},
			autopairs = {
				enable = true,
			},
			indent = { enable = true, disable = {} },

			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},

			autotag = {
				enable = true,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"astro",
					"tsx",
					"jsx",
					"rescript",
					"xml",
					"php",
					"markdown",
					"glimmer",
					"handlebars",
					"hbs",
				},
			},
		})
	end,
}
