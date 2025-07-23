return {
  -- Commands to open the specificed Programs
  vim.keymap.set('n', '<leader>ot', ':tabnew | terminal<CR>', { desc = '[O]pen [T]erminal' }),
  vim.keymap.set('n', '<leader>ol', ':tabnew | terminal lazygit<CR>', { desc = '[O]pen [L]azyGit' }),
}
