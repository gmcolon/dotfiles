-- Set <space> as the leader key
-- -- See `:help mapleader`
-- --  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


if vim.g.python_indent == nil then
	vim.g.python_indent = {}
end

vim.g.python_indent.closed_paren_align_last_line = "v:false"
vim.g.python_indent.continue = "shiftwidth()"
vim.g.python_indent.open_paren = "shiftwidth()"


-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Explore
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
-- Source
--vim.keymap.set("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>")

-- Nvim Toggle
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", {desc="[N]vim [T]ree Toggle"})

-- Next buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", {desc="Next Buffer"})
-- Prev buffer
vim.keymap.set("n", "<leader>bp", ":bp<CR>", {desc="Previous Buffer"})


--copy current buffer absolute path into clipboard
vim.keymap.set("n", "<leader>y", ":CopyCurrentPath<cr>", {desc="Copy Current Path"})


--insert new line at cursor without going into INSERT mode
vim.keymap.set("n", "<leader><CR>", "i<CR><Esc>", { desc = "New line at cursor" })

-- Code Actions
if vim.lsp.buf.range_code_action then
	vim.keymap.set("x", "<leader>ca", vim.lsp.buf.range_code_action, { buffer = 0, desc = "Range code action." })
else
	vim.keymap.set("x", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0, desc = "Code action." })
end

-- Terminal mode move windows
vim.keymap.set('t', '<A-h>', '<C-\\><C-N><C-w>h', {noremap = true, silent = true})
vim.keymap.set('t', '<A-j>', '<C-\\><C-N><C-w>j', {noremap = true, silent = true})
vim.keymap.set('t', '<A-k>', '<C-\\><C-N><C-w>k', {noremap = true, silent = true})
vim.keymap.set('t', '<A-l>', '<C-\\><C-N><C-w>l', {noremap = true, silent = true})

-- Insert mode mappings move windows
vim.keymap.set('i', '<A-h>', '<C-\\><C-N><C-w>h', {noremap = true, silent = true})
vim.keymap.set('i', '<A-j>', '<C-\\><C-N><C-w>j', {noremap = true, silent = true})
vim.keymap.set('i', '<A-k>', '<C-\\><C-N><C-w>k', {noremap = true, silent = true})
vim.keymap.set('i', '<A-l>', '<C-\\><C-N><C-w>l', {noremap = true, silent = true})

-- Normal mode mappings move windows
vim.keymap.set('n', '<A-h>', '<C-w>h', {noremap = true, silent = true})
vim.keymap.set('n', '<A-j>', '<C-w>j', {noremap = true, silent = true})
vim.keymap.set('n', '<A-k>', '<C-w>k', {noremap = true, silent = true})
vim.keymap.set('n', '<A-l>', '<C-w>l', {noremap = true, silent = true})

-- Terminal mode exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})
