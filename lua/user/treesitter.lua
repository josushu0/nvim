local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
	return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
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
		"yaml"
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
}
