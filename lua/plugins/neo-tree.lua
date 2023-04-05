return {
	'nvim-neo-tree/neo-tree.nvim',
	config = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_gitignored = false,
				hide_hidden = false,
				hide_dotfiles = false
			},
			follow_current_file = true
		}
	},
	dependencies = {
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim'
	}
}
