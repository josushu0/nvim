return {
	"catppuccin/nvim",
	name = "catppuccin",
	version = "*",
	config = function()
		require("catppuccin").setup({
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				native_lsp = false,
				mini = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
