return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      local function map(lhs, rhs, opts)
        vim.keymap.set('n', lhs, rhs, opts or {})
      end
      map('<leader>a', function()
        harpoon:list():add()
      end)
      map('<leader>h', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      map('<a-1>', function()
        harpoon:list():select(1)
      end)
      map('<a-2>', function()
        harpoon:list():select(2)
      end)
      map('<a-3>', function()
        harpoon:list():select(3)
      end)
      map('<a-4>', function()
        harpoon:list():select(4)
      end)
      map('<a-5>', function()
        harpoon:list():next()
      end)
    end,
  },
}
