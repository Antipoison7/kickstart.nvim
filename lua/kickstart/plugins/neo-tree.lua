-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>no', ':Neotree reveal<CR>', desc = 'NeoTree [O]pen', silent = true },
    { '<leader>nc', ':Neotree close<CR>', desc = 'NeoTree [C]lose', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<Esc>'] = 'close_window',
        },
      },
    },
  },
}
