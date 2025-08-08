local v = vim.version()
if v.major <= 0 and v.minor < 12 then
	vim.api.nvim_err_writeln("Neovim >= 0.12.0 is required for this config.")
	return
end

vim.loader.enable()

-- opts
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"

-- globals
vim.g.mapleader = " "
