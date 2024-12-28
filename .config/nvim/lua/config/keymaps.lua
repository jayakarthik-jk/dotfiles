local utils = require "utils" local map = utils.map
local cmd = utils.cmd

local hardmode = true
if hardmode then
	for _, mode in pairs({ 'n', 'v', 'i' }) do
		map(mode, "<Up>", "<Nop>")
		map(mode, "<Down>", "<Nop>")
		map(mode, "<Left>", "<Nop>")
		map(mode, "<Right>", "<Nop>")
	end
end

-- Copy to clipboard
map({ 'n', 'x' }, 'y', '"+y', "Copy to system buffer")
map({ 'n', 'x' }, 'Y', '"+Y', "Copy to system buffer")
map('n', "yy", '"+yy')

-- Window focus change
map('n', "<C-h>", "<C-w>h", "Focus left window")
map('n', "<C-j>", "<C-w>j", "Focus bottom window")
map('n', "<C-k>", "<C-w>k", "Focus top window")
map('n', "<C-l>", "<C-w>l", "Focus right window")
map('n', "<C-_>", cmd "split", "Split pane horizontally")
map('n', "<C-S-Bslash>", cmd "vsplit", "Split pane vertically")

-- Select pasted text
map('n', "gp", "`[v`]", "Copy pasted text")
