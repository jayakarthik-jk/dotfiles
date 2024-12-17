return {
	{
		"navarasu/onedark.nvim",
		opts = { style = "cool" },
		config = function()
			local config = require('onedark')
			config.setup({ style = 'darker' })
			config.load()
			vim.cmd("colorscheme onedark")
		end
	}
}
