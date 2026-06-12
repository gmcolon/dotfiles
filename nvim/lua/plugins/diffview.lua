return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>',           desc = '[G]it [D]iff working tree' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>',  desc = '[G]it file [H]istory' },
    { '<leader>gH', '<cmd>DiffviewFileHistory<cr>',    desc = '[G]it branch [H]istory' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>',          desc = '[G]it [C]lose diff' },
  },
  opts = {},
}
