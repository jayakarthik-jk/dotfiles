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
map({ 'n', 'x' }, 'Y', '"+Y', "Copy to system buffer")

-- Window focus change
map('n', "<C-h>", "<C-w>h", "Focus left window")
map('n', "<C-j>", "<C-w>j", "Focus bottom window")
map('n', "<C-k>", "<C-w>k", "Focus top window")
map('n', "<C-l>", "<C-w>l", "Focus right window")

map('n', 'J', "<Nop>")

map('n', "<C-d>", cmd "bd", "Delete current buffer")

map('n', "<C-S-\\>", cmd "vsplit", "Split pane vertically")
map('n', "<C-S-->", cmd "split", "Split pane horizontally")

-- Select pasted text
map('n', "gp", "`[v`]", "Copy pasted text")
