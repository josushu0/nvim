return {
	"echasnovski/mini.starter",
	branch = "stable",
	event = "VimEnter",
	config = function()
		require("mini.starter").setup({
		evaluate_single = false,
		header = table.concat({
			[[                               __                ]],
			[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}, "\n"),
		items = {
			require("mini.starter").sections.builtin_actions(),
			require("mini.starter").sections.recent_files(5, true),
		},
		footer = "",
	})
	end,
}
