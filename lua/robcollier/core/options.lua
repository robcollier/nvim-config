local opt = vim.opt -- for conciseness
-- line numbers
opt.relativenumber = true
opt.number = true
-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
-- line wrapping
opt.wrap = false
-- searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- backspace
opt.backspace = "indent,eol,start"
-- split windows
opt.splitright = true
opt.splitbelow = true
-- misc
opt.iskeyword:append("-")
opt.swapfile = false -- Do not leave any backup files
opt.backup = false
opt.mouse = "a" -- Enable mouse on insert mode
opt.showmatch = true -- Highlights the matching parenthesis
opt.hidden = true -- Allow multple buffers
opt.updatetime = 50 -- I have a modern machine. No need to wait that long
opt.shortmess:append("c") -- Don't pass messages to |ins-completion-menu|.
opt.encoding = "utf-8" -- Just in case
opt.cmdheight = 1
opt.wildmode = "longest:full,full"
opt.title = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.confirm = true
-- undo
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
