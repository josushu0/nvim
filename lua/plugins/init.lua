return {
	{
		"projekt0n/circles.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" }
		},
		config = true
	},
	{
		"echasnovski/mini.ai",
		branch = "stable",
		keys = {
			{ "a", mode = { "x", "o" } },
			{ "i", mode = { "x", "o" } },
		},
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.bufremove",
		branch = "stable",
		keys = {
			{ "<leader>c", ":lua MiniBufremove.delete()<CR>", desc = "Delete a buffer" },
		},
		config = function()
			require("mini.bufremove").setup()
		end,
	},
	{
		"echasnovski/mini.cursorword",
		branch = "stable",
		event = "BufReadPost",
		config = function()
			require("mini.cursorword").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		branch = "stable",
		event = "VeryLazy",
		config = function()
			require("mini.pairs").setup({
				modes = { insert = true, command = true, terminal = true },
			})
		end,
	},
	{
		"echasnovski/mini.surround",
		branch = "stable",
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		opts = {
			mapping = { "kj", "jk" },
		},
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"windwp/nvim-ts-autotag",
		event = "BufReadPre",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"Darazaki/indent-o-matic",
		event = "BufReadPre",
		opts = {
			max_lines = 2048,
			standard_widths = { 2, 4, 8 },
		},
	},
	{
		"j-morano/buffer_manager.nvim",
		keys = {
			{
				"<leader>bb",
				"<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<CR>",
				desc = "Open buffer selection",
			},
		},
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
}
