return {
  -- Commands to open the specificed Programs
  vim.keymap.set('n', '<C-x><C-f>', ':Explore<CR>'),
  vim.keymap.set('n', '<leader>ob', ':tabnew<CR>', { desc = '[O] Scratch [B]uffer' }),
  vim.keymap.set('n', '<leader>ot', ':tabnew | terminal<CR>', { desc = '[O]pen [T]erminal' }),
  --- vim.keymap.set('n', '<leader>ol', ':tabnew | terminal lazygit<CR>', { desc = '[O]pen [L]azyGit' }),
  vim.keymap.set('n', '<leader>on', ':new<CR>', { desc = '[O]pen [n]ew window' }),

  -- Moving around lines
  -- Normal Mode
  vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' }),
  vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' }),

  -- Visual Mode
  vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' }),
  vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' }),
}
