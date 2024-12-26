local function contains_vcs_file(file)
	local handle = io.popen('test -e ' .. file .. ' && echo 1 || echo 0')
	if handle == nil then return false end
	local result = handle:read("*a"):gsub("%s+", "")
	handle:close()
	return result == "1"
end

local function git_status ()
	local fzf = require("fzf-lua")
	if contains_vcs_file(".git") then
		fzf.git_status()
	elseif contains_vcs_file(".hg") then
		require'fzf-lua'.fzf_exec("hg st -mn", {
			fzf_opts = {
				['--preview'] = "hg diff {}",
			},
		})
	else
		print("No git or hg repository found in the current directory.")
	end
end

return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			"default-title",
			fzf_opts = {
				["--info"] = "default",
				["--layout"] = "reverse-list",
			},
			keymap = {
				builtin = {
					["<C-/>"] = "toggle-help",
					["<C-a>"] = "toggle-fullscreen",
					["<C-i>"] = "toggle-preview",
					["<C-f>"] = "preview-page-down",
					["<C-b>"] = "preview-page-up",
				},
			},
		},
		keys = function ()
			local fzf = require("fzf-lua")
			return {
				{ "<C-S-p>", fzf.commands, mode = 'n', desc = "Command Pallete" },
				{ "<leader> ", fzf.files, mode = 'n', desc = "Search File" },
				{ "<leader>bb", fzf.buffers, mode = 'n', desc = "Search Buffers" },
				{ "<leader>sg", fzf.live_grep, mode = 'n', desc = "Global Search" },
				{ "<leader>fs", fzf.lsp_document_symbols, mode = 'n', desc = "Search Symbols" },
				{ "<leader>ca", fzf.lsp_code_actions, mode = 'n', desc = "Code Actions" },
				{ "<leader>gs", git_status, mode = 'n', desc = "VCS status" },

			}
		end
	}
}
