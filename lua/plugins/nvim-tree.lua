return {
	"nvim-tree/nvim-tree.lua",
	commit = "7282f7de8aedf861fe0162a559fc2b214383c51c",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	keys = {
		{ "<leader>e", ":NvimTreeFindFileToggle<CR>" },
	},
	opts = {
		hijack_cursor = true,
		update_focused_file = {
			enable = true,
			update_cwd = true,
		},
		renderer = {
			root_folder_modifier = ":t",
			icons = {
				glyphs = {
					default = "",
					symlink = "",
					folder = {
						arrow_open = "",
						arrow_closed = "",
						default = "",
						open = "",
						empty = "",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
					git = {
						unstaged = "",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "★",
						deleted = "",
						ignored = "◌",
					},
				},
			},
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
			icons = {
				hint = "",
				info = "",
				warning = "",
				error = "",
			},
		},
		view = {
			width = 30,
			side = "left",
			mappings = {
				list = {
					{ key = { "<space>", "<CR>", "o" }, action = "edit" },
				},
			},
		},
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
	},
}
