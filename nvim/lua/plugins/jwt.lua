return {
	dir = "~/fun/nvim-plugins/jwt.nvim",
	config = function()
		local jwt = require("example")

		jwt.setup()
	end,
}
