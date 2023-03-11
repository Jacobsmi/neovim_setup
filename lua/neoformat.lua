local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

autocmd('BufWritePre', {
  pattern = {'*.js', '*.jsx', '*.ts', '*.tsx'},
  command = "Neoformat prettier"
})


