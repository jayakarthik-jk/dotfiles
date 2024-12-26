local utils = {}

utils.map = function(mode, lhs, rhs, desc)
	desc = desc or ''
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

utils.cmd = function(code)
       return "<CMD>" .. code .. "<CR>"
end

return utils
