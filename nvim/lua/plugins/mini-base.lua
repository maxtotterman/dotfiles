return {
	{
		"echasnovski/mini.surround",
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		config = function()
			require("mini.pairs").setup()
		end,
	},
	{
		"echasnovski/mini.move",
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		"echasnovski/mini.cursorword",
		config = function()
			require("mini.cursorword").setup()
		end,
	},
	{
		"echasnovski/mini.tabline",
		config = function()
			require("mini.tabline").setup()
		end,
	},
	{
		"echasnovski/mini.comment",
		config = function()
			require("mini.comment").setup()

			vim.keymap.set("n", "<leader>n", ":lua MiniFiles.open()<CR>", {})
		end,
	},
	{
		"echasnovski/mini.files",
		config = function()
			require("mini.files").setup()
		end,
	},
}
