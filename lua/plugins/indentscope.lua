return {
	"echasnovski/mini.indentscope",
	branch = "stable",
	event = "BufReadPre",
	config = function()
		require("mini.indentscope").setup({
			draw = {
				delay = 0,
				animation = require("mini.indentscope").gen_animation("none")
			},
			symbol = "▏",
		})
	end,
}
