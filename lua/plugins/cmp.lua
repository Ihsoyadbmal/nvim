return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp'
	},
	opts = function()
		local cmp = require('cmp')
		return {
			sources = cmp.config.sources({
				{name = 'nvim_lsp'}
			})
	}
	end
}
