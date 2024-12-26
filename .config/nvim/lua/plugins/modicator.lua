return {
	{
		'mawkler/modicator.nvim',
		dependencies = 'mawkler/onedark.nvim', -- Add your colorscheme plugin here
		opts = {},
		init = function()
			-- These are required for Modicator to work
			vim.o.cursorline = true
			vim.o.number = true
			vim.o.termguicolors = true
			vim.o.relativenumber = true
		end,
	}
}
