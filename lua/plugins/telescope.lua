return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim" }
	},
	keys = {
		{ "<leader>f", "<cmd>Telescope find_files<CR>" },
		{ "<leader>e", "<cmd>Telescope file_browser<CR>" },
	},
	config = function()
		require("telescope").setup()
		require("telescope").load_extension("file_browser")
	end,
}
