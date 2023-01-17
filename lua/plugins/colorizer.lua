return {
	"NvChad/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		filetypes = { "*" },
		user_default_options = {
			mode = "background",
			RGB = true,
			RRGGBB = true,
			names = false,
			RRGGBBAA = true,
			AARRGGBB = true,
			rgb_fn = true,
			hsl_fn = true,
			tailwind = true,
			sass = { enable = true, parsers = { "css" } },
			virtualtext = "■",
		},
	},
}
