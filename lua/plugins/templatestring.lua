return {
	"axelvc/template-string.nvim",
	event = "BufReadPost",
	opts = {
		filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "astro" },
		jsx_brackets = true,
		remove_template_string = true,
		restore_quotes = {
			normal = [[']],
			jsx = [[']],
		},
	},
}
