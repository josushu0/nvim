local status_ok, pairs = pcall(require, "mini.pairs")
if not status_ok then
	return
end

pairs.setup({
	modes = { insert = true, command = true, terminal = true },
})
