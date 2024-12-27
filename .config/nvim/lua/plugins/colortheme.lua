return {
	{
		"navarasu/onedark.nvim",
		url = "https://github.com/navarasu/onedark.nvim.git",
		opts = {
			style = 'darker'
		},
		init = function ()
			vim.cmd.colorscheme("onedark")
		end
	}
}
