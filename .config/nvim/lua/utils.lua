local utils = {}

utils.map = function(lhs, rhs, desc, mode)
	desc = desc or ''
	mode = mode or 'n'
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

utils.cmd = function(code)
	return "<CMD>" .. code .. "<CR>"
end

local function contains_vcs_file(file)
	local handle = io.popen('test -e ' .. file .. ' && echo 1 || echo 0')
	if handle == nil then return false end
	local result = handle:read("*a"):gsub("%s+", "")
	handle:close()
	return result == "1"
end

utils.git_status = function()
	local fzf = require("fzf-lua")
	if contains_vcs_file(".git") then
		fzf.git_status()
	elseif contains_vcs_file(".hg") then
		require('fzf-lua').fzf_exec("hg st -man", {
			fzf_opts = {
				['--preview'] = "hg diff {} | fold -s -w $FZF_PREVIEW_COLUMNS",
			},
		})
	else
		print("No git or hg repository found in the current directory.")
	end
end


return utils
