local function map(mode, lhs, rhs, desc)
	desc = desc or ''
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

local function cmd(code)
       return "<CMD>" .. code .. "<CR>"
end

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

-- Custom
map('n', "<leader>e", cmd("NvimTreeToggle"), "Toggle Explorer")

-- fzf
local fzf = require("fzf-lua")
map('n', '<C-S-p>', fzf.commands, "Command Pallete")
map('n', "<leader> ", fzf.files, "Search File")
map('n', "<leader>sg", fzf.live_grep, "Global Search")
map('n', "<leader>ca", fzf.lsp_code_actions, "Code Actions")


-- harpoon
local harpoon = require("harpoon")
map('n', "<leader><Tab>", function() harpoon:list():next() end, "Switch to next harpoon tab")
map('n', "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Show harpoon menu")
map('n', "<leader>a", function() harpoon:list():add() end, "Add current file to harpoon")
for i = 1, 9 do
	map('n', "<leader>" .. i, function() harpoon:list():select(i) end, "Switch to " .. i .. "th harpoon tab")
end


-- lsp
map('n', 'K', vim.lsp.buf.hover, "Hover Text")
map('n', 'gd', vim.lsp.buf.definition, "Go to definition")
map('n', 'gD', vim.lsp.buf.declaration, "Go to declaration")
map('n', 'gi', vim.lsp.buf.implementation, "Go to implementation")
map('n', 'go', vim.lsp.buf.type_definition, "Go to type definition")
map('n', 'gr', vim.lsp.buf.references, "References")
map('n', 'gs', vim.lsp.buf.signature_help, "Signature help")
map('n', '<space>cr', vim.lsp.buf.rename, "Rename")
-- removing here coz added with fzf
-- map('n', '<space>ca', vim.lsp.buf.code_action, "Code actions")
