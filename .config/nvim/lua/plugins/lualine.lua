local utils = require("utils")

return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	keys = {
		{ "H", utils.cmd "bprevious", mode = 'n', desc = "Go to left buffer" },
		{ "L", utils.cmd "bnext", mode = 'n', desc = "Go to right buffer" },
	},
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
			lualine_b = {
				-- 'filename',
				'branch'
			},
			lualine_c = {
				"%=",
				{
					"buffers",
					cond = function()
						return #vim.fn.getbufinfo({ buflisted = 1 }) > 0
					end,
					separator = { left = '', right = '' },
					use_mode_colors = true,
					buffers_color = {
						active = function()
							local mode_names = {
								n = "lualine_a_normal",
								i = "lualine_a_insert",
								v = "lualine_a_visual",
								V = "lualine_a_visual",
								R = "lualine_a_replace",
								t = "lualine_a_terminal",
								c = "lualine_a_command",
							}
							local mode = vim.api.nvim_get_mode().mode
							return mode_names[mode]
						end,
						inactive = 'lualine_a_inactive',
					},
					filetype_names = {
						oil = ''
					},
					symbols = {
						alternate_file = '',
					},
				}
			},
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
	},
	init = function()
		vim.opt.showmode = false
	end
}
