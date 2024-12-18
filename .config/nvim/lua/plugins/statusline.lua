-- removing command line
-- vim.o.cmdheight = 0
-- enabing command line when recording
-- vim.cmd [[ autocmd RecordingEnter * set cmdheight=1 ]]
-- vim.cmd [[ autocmd RecordingLeave * set cmdheight=0 ]]


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
			lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
			lualine_b = { 'filename', 'branch' },
			lualine_c = {
				'%=', --[[ add your center compoentnts here in place of this comment ]]
			},
			lualine_x = {
				{
					require("noice").api.statusline.mode.get,
					cond = require("noice").api.statusline.mode.has,
					color = { fg = "#ff9e64" },
				}
			},
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
