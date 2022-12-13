vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

keymap.set('n', '<leader>nh', ':nohl<CR>')
keymap.set('n', '<leader>ww', ':w<CR>') -- Save
keymap.set('n', '<leader>wq', ':wq<CR>') -- Save & Quit
keymap.set('n', '<leader>q', ':q!<CR>') -- Save & Quit
keymap.set('n', 'x', '"_x') -- dont save small deletes to the register
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- Telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>')
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>')
keymap.set('n', '<leader>bb', '<cmd>Telescope buffers<CR>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
keymap.set('n', '<leader>gs', '<cmd>Telescope builtin.lsp_workspace_symbols<CR>')
-- Keep search matches in the middle of the window
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Open NetRW to the left
--keymap.set("n", "<leader>e", ":Lex 30<Cr>")
-- Reload nvim config
keymap.set("n", "<leader>r", "source $MYVIMRC<CR>")
