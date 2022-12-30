-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
        additional_vim_regex_highlighting = {"php"},
  },
  -- enable indentation
  indent = { enable = false },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
    ensure_installed = {
        "json",
        "html",
        "php",
        "markdown",
        "css",
        "javascript",
    },
    incremental_selection = {
        enable = true, 
        keymaps = {
            init_selection = 'gnn', 
            node_incremental = 'grn', 
            scope_incremental = 'grc', 
            node_decremental = 'grm',
        },
    },
  -- auto install above language parsers
  auto_install = true,
})
