vim.g.mapleader = ' '

-- move windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- window resizing
-- vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>')
-- vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>')
-- vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>')
-- vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>')


-- move lines
vim.keymap.set('n', '<C-Up>', '<cmd>m .-2<cr>==')
vim.keymap.set('n', '<C-Down>', '<cmd>m .+1<cr>==')
vim.keymap.set('v', '<C-Up>', ":m '<-2<cr>gv=gv")
vim.keymap.set('v', '<C-Down>', ":m '>+1<cr>gv=gv")

-- utils
vim.keymap.set({'n', 'i'}, '<esc>', '<cmd>noh<cr><esc>')
vim.keymap.set({'i', 'n', 'v', 's'}, '<C-s>', '<cmd>w<cr><esc>')



