function insertFullPath()
  local filepath = vim.fn.expand('%')
  vim.fn.setreg('+', filepath) -- write to clippoard
end

vim.api.nvim_create_user_command('Zf',
  function(opts)
      insertFullPath()
  end,
  {})

