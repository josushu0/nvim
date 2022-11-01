local status_ok, string = pcall(require, "template-string")
if not status_ok then
	return
end

string.setup({
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "astro" },
	jsx_brackets = true,
	remove_template_string = true,
	restore_quotes = {
		normal = [[']],
		jsx = [[']],
	},
})
