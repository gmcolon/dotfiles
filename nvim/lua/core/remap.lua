-- Leader
vim.g.mapleader = " "

-- @keymaps
local keyset = vim.keymap.set

local silentnoremap = {noremap = true, silent = true}

-- Explore
keyset("n", "<leader>ex", vim.cmd.Ex)
-- Source
keyset("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>")

-- Nvim Toggle
keyset("n", "<leader>s", ":NvimTreeToggle<CR>")

-- Next buffer
keyset("n", "<leader>bn", ":bn<CR>")
-- Prev buffer
keyset("n", "<leader>bp", ":bp<CR>")

-- remove highlight
keyset("n", "<leader>nh", ":noh<cr>")

-- copy current buffer absolute path into clipboard
keyset("n", "<leader>y", ":CopyCurrentPath<cr>")

-- packer
keyset("n", "<leader>pi", ":PackerInstall<cr>")
keyset("n", "<leader>pu", ":PackerUpdate<cr>")
keyset("n", "<leader>pc", ":PackerClean<cr>")
keyset("n", "<leader>ps", ":PackerSync<cr>")
keyset("n", "<leader>pc", ":PackerClean<cr>")

-- close quickfix list
keyset("n", "<leader>cl", ":cclose<cr>")



