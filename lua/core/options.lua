-- Global parameters
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.selection = 'exclusive'
vim.opt.clipboard = 'unnamedplus'

-- Colorscheme
vim.cmd.colorscheme = 'tokyonight-moon'

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', {clear = true})
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})



