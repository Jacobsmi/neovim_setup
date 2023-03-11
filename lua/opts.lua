local set = vim.opt -- set options
set.tabstop = 2
set.softtabstop = 2 
set.shiftwidth = 2

local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

autocmd('BufWritePre', {
  pattern = {'*.js', '*.jsx', '*.ts', '*.tsx'},
  command = "Neoformat prettier"
})

local cmp = require'cmp'

cmp.setup({
    snippet = {
      expand = function(args)
				require('luasnip').lsp_expand(args.body)
			end,
		},
		 mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      }, {
      { name = 'buffer' },
    })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig').tsserver.setup {
    capabilities = capabilities
}
