vim.cmd("colorscheme onedark")
local set = vim.opt -- set options
set.tabstop = 2
set.softtabstop = 2 
set.shiftwidth = 2

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Space + w saves a file
vim.keymap.set('n', '<Space>w', ':write<CR>')

vim.keymap.set('n', '<Space>q', ':quit<CR>')
