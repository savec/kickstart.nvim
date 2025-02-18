if vim.g.neovide then
  vim.o.guifont = 'NotoSansM NF:h12'
  vim.g.neovide_scale_factor = 0.8
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(1.15)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(1 / 1.15)
  end)
end
