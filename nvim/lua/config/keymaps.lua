vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Line Diagnostics' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader><CR>', 'i<CR><Esc>', { desc = 'Insert new line at cursor. Stay in Normal mode' })

-- Disable PgUp & PgDn (inconveniently placed on the T14)
vim.keymap.set('n', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<PageDown>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<PageDown>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { desc = 'Previous Buffer' })
