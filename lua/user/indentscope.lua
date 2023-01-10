local status_ok, indentscope = pcall(require, "mini.indentscope")
if not status_ok then
	return
end

indentscope.setup({
	draw = {
		delay = 0,
		animation = function()
			return 0
		end,
	},

	symbol = "▏",
})
