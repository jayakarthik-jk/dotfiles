
local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

local function cmd(code)
	return "<CMD>" .. code .. "<CR>"
end

local hardmode = true
if hardmode then
	for _, mode in pairs({ "n", "v", "i" }) do
		map(mode, "<Up>", "<Nop>")
		map(mode, "<Down>", "<Nop>")
		map(mode, "<Left>", "<Nop>")
		map(mode, "<Right>", "<Nop>")
	end
end

-- move line
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==")
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==")
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi")
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi")
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv")
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv")

-- Copy to clipboard
map({ "n", "x" }, "y", '"+y')
map({ "n", "x" }, "Y", '"+Y')
map("n", "yy", '"+yy')

-- Window focus change
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Custom
map("n", "<leader>e", cmd "NvimTreeToggle")

-- fzf
local fzf = require("fzf-lua")
local fzf_defaults = { fzf_opts = { ["--layout"] = "reverse-list" } }
map('n', '<C-S-p>', function() fzf.commands() end)
map("n", "<C-p>", function() fzf.files(fzf_defaults) end)
map("n", "<leader> ", function() fzf.files(fzf_defaults) end)
map("n", "<leader>g", function() fzf.live_grep() end)

-- harpoon
local harpoon = require("harpoon")
map('n', "<leader><Tab>", function() harpoon:list():next() end)
map('n', "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
map('n', "<leader>a", function() harpoon:list():add() end)
for i = 1, 9 do
	map('n', "<C-" .. i .. ">", function() harpoon:list():select(i) end)
end

-- Auto mark buffer
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function () harpoon:list():select() end
})

-- execute this to remove mark
-- local current_file_path = vim.fn.expand("%")
-- local buf = harpoon:list():get_by_value(current_file_path)
-- harpoon:remove(buf)
-- Remove mark when quiting the buffer

-- lsp
map('n', 'K', function() vim.lsp.buf.hover() end)
map('n', 'gd', function() vim.lsp.buf.definition() end)
map('n', 'gD', function() vim.lsp.buf.declaration() end)
map('n', 'gi', function() vim.lsp.buf.implementation() end)
map('n', 'go', function() vim.lsp.buf.type_definition() end)
map('n', 'gr', function() vim.lsp.buf.references() end)
map('n', 'gs', function() vim.lsp.buf.signature_help() end)
