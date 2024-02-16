return {
	"echasnovski/mini.statusline",
	config = function()
		local statusline = require("mini.statusline")
		statusline.setup({
			content = {
				-- Content for active window
				active = function()
					local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
					local git = MiniStatusline.section_git({ trunc_width = 75 })
					local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
					return MiniStatusline.combine_groups({
						{ hl = mode_hl, strings = { mode } },
						{ hl = "MiniStatuslineDevinfo", strings = { git, diagnostics } },
					})
				end,
				-- Content for inactive window(s)
				inactive = nil,
			},

			-- Whether to use icons by default
			use_icons = true,
			-- Whether to set Vim's settings for statusline (make it always shown with
			-- 'laststatus' set to 2). To use global statusline in Neovim>=0.7.0, set

			-- this to `false` and 'laststatus' to 3.
			set_vim_settings = true,
		})
	end,
}
