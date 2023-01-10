local status_ok, comment = pcall(require, "mini.comment")
if not status_ok then
	return
end

comment.setup({
	mappings = {
		-- Toggle comment (like `gcip` - comment inner paragraph) for both
		-- Normal and Visual modes
		comment = "gc",

		-- Toggle comment on current line
		comment_line = "gcc",

		-- Define 'comment' textobject (like `dgc` - delete whole comment block)
		textobject = "gc",
	},
	hooks = {
		pre = function()
			require("ts_context_commentstring.internal").update_commentstring()
		end,
	},
})
