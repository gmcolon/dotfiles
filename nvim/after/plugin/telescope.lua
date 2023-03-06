local builtin = require('telescope.builtin')
local silentnoremap = {noremap = true, silent = true}

vim.keymap.set('n', '<leader>ff', builtin.find_files, silentnoremap )
vim.keymap.set('n', '<leader>fg', builtin.live_grep, silentnoremap)
vim.keymap.set('n', '<leader>fb', builtin.buffers, silentnoremap)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, silentnoremap)
vim.keymap.set("n", "<Leader>fr", ":Telescope oldfiles<CR>", silentnoremap)

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      n = {
    	  ['<c-d>'] = require('telescope.actions').delete_buffer
      }, -- n
      i = {
        ["<C-h>"] = "which_key",
        ['<c-d>'] = require('telescope.actions').delete_buffer
      } -- i
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

require("telescope").load_extension("noice")
