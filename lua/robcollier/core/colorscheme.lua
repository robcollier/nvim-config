require("rose-pine").setup({
	dark_variant = "moon",
})
vim.cmd("colorscheme rose-pine")
local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
	print("Colorscheme not installed")
	return
end
