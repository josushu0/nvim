local status_ok, escape = pcall(require, "better_escape")
if not status_ok then
	return
end

escape.setup({
	mapping = { "kj" },
})
