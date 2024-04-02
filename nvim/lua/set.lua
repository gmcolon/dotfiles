-- Se <space> a the leader key
-- -- See `:help mapleader`
-- --  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
vim.keymap.set("n", "<leader>s", ":NvimTreeToggle<CR>")
-- Next buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>")

-- Prev buffer
vim.keymap.set("n", "<leader>bp", ":bp<CR>")

--copy current buffer absolute path into clipboard
vim.keymap.set("n", "<leader>y", ":CopyCurrentPath<cr>")

--insert new line at cursor without going into INSERT mode
vim.keymap.set("n", "<leader><CR>", "i<CR><Esc>", { desc = "New line at cursor" })
