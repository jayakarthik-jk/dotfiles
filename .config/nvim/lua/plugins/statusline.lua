-- -- removing command line
-- vim.o.cmdheight = 0
-- -- enabing command line only on command mode
-- vim.cmd [[ autocmd CmdlineEnter * set cmdheight=1 ]]
-- vim.cmd [[ autocmd CmdlineLeave * set cmdheight=0 ]]
vim.opt.showmode = false

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {

		options = {
			theme = "onedark",
			component_separators = '',
			section_separators = { left = '', right = '' },
			globalstatus = true
		},
		sections = {
			lualine_a = {
				{ 'mode', separator = { left = '' }, right_padding = 2 },
			},
			lualine_b = { 'filename', 'branch' },
			lualine_c = {},
			lualine_x = {},
			lualine_y = { 'filetype', 'progress' },
			lualine_z = {
				{ 'location', separator = { right = '' }, left_padding = 2 },
			},
		},
		inactive_sections = {
			lualine_a = { 'filename' },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { 'location' },
		},
		tabline = {},
		extensions = {},
	}
}
