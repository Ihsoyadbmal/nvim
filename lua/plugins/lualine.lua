return {
	'nvim-lualine/lualine.nvim',
	opts = function()
		return {
			tabline = {
				lualine_a = {'buffers'},
				lualine_z = {'tabs'}
			}
		}
	end
}
