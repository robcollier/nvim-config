local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true
-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 0
opt.expandtab = true
opt.autoindent =  true
-- line wrapping
opt.wrap = false
-- searching
opt.ignorecase = true
opt.smartcase = true
-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
-- backspace
opt.backspace = 'indent,eol,start'
-- split windows
opt.splitright = true
opt.splitbelow = true
-- misc
opt.iskeyword:append('-')
vim.opt.swapfile = false      -- Do not leave any backup files
vim.opt.mouse="i"             -- Enable mouse on insert mode
vim.opt.showmatch  = true     -- Highlights the matching parenthesis
vim.opt.hidden = true         -- Allow multple buffers
vim.opt.updatetime = 750      -- I have a modern machine. No need to wait that long
vim.opt.shortmess:append("c") -- Don't pass messages to |ins-completion-menu|.
vim.opt.encoding = "utf-8"    -- Just in case
vim.opt.cmdheight=1
