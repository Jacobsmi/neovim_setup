local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
	extensions = {
		file_browser = {
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-a>"] = fb_actions.create,
					["<C-r>"] = fb_actions.rename,
					["<C-d>"] = fb_actions.remove,
					["<C-c>"] = fb_actions.copy,
				},
				["n"] = {
					["a"] = fb_actions.create,
					["r"] = fb_actions.rename,
					["d"] = fb_actions.remove,
					["c"] = fb_actions.copy,
	
				},
			},
		}
	},
}
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

