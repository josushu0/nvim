local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
	return
end

colorizer.setup({
	filetypes = { "*" },
	user_default_options = {
		css = true,
		mode = "virtualtext",
		tailwind = true,
		sass = { enable = true, parsers = { "css" } },
		virtualtext = "■",
	},
})
