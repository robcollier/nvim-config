vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader> ", ":")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>ww", ":w<CR>") -- Save
keymap.set("n", "<leader>wq", ":wq<CR>") -- Save & Quit
keymap.set("n", "<leader>q", ":q!<CR>") -- Save & Quit
keymap.set("n", "x", '"_x') -- dont save small deletes to the register
keymap.set("n", "<leader><Tab>", ":e#<CR>")
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<CR>")
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>b", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>h", "<cmd>Telescope help_tags<CR>")

keymap.set("n", "<leader>gs", "<cmd>Telescope lsp_document_symbols<CR>")
keymap.set("n", "<leader>gf", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>")

keymap.set("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
keymap.set("n", "<leader>sc", "<cmd>Telescope command_history<CR>")
keymap.set("n", "<leader>sr", "<cmd>Telescope registers<CR>")
-- Keep search matches in the middle of the window
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Reload nvim config
keymap.set("n", "<leader>r", "source $MYVIMRC<CR>")
-- tab out of autopairs

function EscapePair()
	local closers = { ")", "]", "}", ">", "'", '"', "`", "," }
	local line = vim.api.nvim_get_current_line()
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	local after = line:sub(col + 1, -1)
	local closer_col = #after + 1
	local closer_i = nil
	for i, closer in ipairs(closers) do
		local cur_index, _ = after:find(closer)
		if cur_index and (cur_index < closer_col) then
			closer_col = cur_index
			closer_i = i
		end
	end
	if closer_i then
		vim.api.nvim_win_set_cursor(0, { row, col + closer_col })
	else
		vim.api.nvim_win_set_cursor(0, { row, col + 1 })
	end
end

keymap.set("i", "<C-l>", "<cmd>lua EscapePair()<CR>", { noremap = true, silent = true })
-- Git
keymap.set("n", "<leader>gg", "<cmd>LazyGitCurrentFile<CR>")
-- from the primagen
-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "J", "mzJ`z")
-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set({ "n", "v" }, "<leader>d", [["_d]])
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
