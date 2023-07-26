return {
	'nvim-lualine/lualine.nvim',
	opts = function()
		return {
			winbar = {
				lualine_a = {'buffers'},
				lualine_z = {'tabs'}
			}
		}
	end
}
