-- removing command line
-- vim.o.cmdheight = 0
-- -- enabing command line when recording
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
			lualine_a = {
				{ 'mode', separator = { left = '' }, right_padding = 2 },
			},
			lualine_b = { 'filename', 'branch' },
			lualine_c = {
				-- '%=',
			},
			lualine_x = {
				{
					function()
						return "recording @" .. vim.fn.reg_recording()
					end,
					cond = function()
						return vim.fn.reg_recording() ~= ""
					end,
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
		extensions = {
			-- "fzf",
			-- "lazy"
		},
	}
}
