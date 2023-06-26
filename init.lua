-- Options
require('core.options')
require('core.remap')
require('config.lazy')

vim.api.nvim_create_autocmd('VimEnter', {
	command = 'NeoTreeShow'
})
