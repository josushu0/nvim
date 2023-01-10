local status_ok, starter = pcall(require, "mini.starter")
if not status_ok then
	return
end

starter.setup({
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
		starter.sections.builtin_actions(),
		starter.sections.recent_files(5, true),
		-- Use this if you set up 'mini.sessions'
		starter.sections.sessions(5, true),
	},
	footer = "",
})
