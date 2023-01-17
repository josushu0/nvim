return {
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
			{ "<leader>bc", ":lua MiniBufremove.delete()<CR>", desc = "Delete a buffer" },
		},
		config = function()
			require("mini.bufremove").setup()
		end,
	},
	{
		"echasnovski/mini.completion",
		branch = "stable",
		event = "InsertEnter",
		config = function()
			require("mini.completion").setup()
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
		"echasnovski/mini.sessions",
		branch = "stable",
		event = "VimEnter",
		keys = {
			{ "<leader>ss", "<cmd>lua MiniSessions.select()<CR>", desc = "Select a session" },
		},
		config = function()
			require("mini.sessions").setup()
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
		keys = {
			{ "kj", desc = "Escape to normal mode" }
		},
		opts = {
			mapping = { "kj" },
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
}
