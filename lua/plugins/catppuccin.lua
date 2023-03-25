return {
	"catppuccin/nvim",
	name = "catppuccin",
	version = "*",
	opts = {
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			native_lsp = false,
			mini = true,
		},
	}
}
