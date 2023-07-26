vim.g.mapleader = ' '

local remap = vim.keymap.set

-- convenient remaping
remap({'n', 'v'}, '<Space>', '<Nop>')
remap('n', '<leader>qq', ':wqa<cr>')
remap('n', '<leader>z', 'u')
remap('n', '<leader>y', '<C-r>')

-- move windows
remap('n', '<C-j>', '<C-w>j')
remap('n', '<C-k>', '<C-w>k')
remap('n', '<C-l>', '<C-w>l')

-- window resizing
-- remap('n', '<C-Up>', ':resize +2<cr>')
-- remap('n', '<C-Down>', ':resize -2<cr>')
-- remap('n', '<C-Left>', ':vertical resize -2<cr>')
-- remap('n', '<C-Right>', ':vertical resize +2<cr>')


-- move lines
remap('n', '<C-Up>', ':m .-2<cr>==')
remap('n', '<C-Down>', ':m .+1<cr>==')
remap('v', '<C-Up>', ':m \'<-2<cr>gv=gv')
remap('v', '<C-Down>', ':m \'>+1<cr>gv=gv')

-- utils
remap({'n', 'i'}, '<esc>', '<esc>:noh<cr>', {silent=true})
remap({'i', 'n', 'v', 's'}, '<C-s>', '<esc>:w<cr>')

-- move buffers
remap('n', '<Tab>', ':bnext<cr>')
remap('n', '<S-Tab>', ':bprevious<cr>')

-- registers -> needs more work on it
remap({'n', 'v'}, '<leader>c', 'y')
remap({'n', 'v'}, '<leader>v', 'p')

