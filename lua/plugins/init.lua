-- in future think about using lz.n for lazy loading
-- bootstrap mini.deps
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		'git', 'clone', '--filter=blob:none',
		'https://github.com/echasnovski/mini.nvim', mini_path
	}
	vim.fn.system(clone_cmd)
	vim.cmd('packadd mini.nvim | helptags ALL')
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- Set up 'mini.deps' (customize to your liking)
local MiniDeps = require('mini.deps')
MiniDeps.setup({ path = { package = path_package } })

local add = MiniDeps.add

add({ source = "tiagovla/tokyodark.nvim" })
add({ source = "projekt0n/github-nvim-theme"})
add({ source = "echasnovski/mini.nvim" })
add({ source = "neovim/nvim-lspconfig" })
add({ source = "nvim-treesitter/nvim-treesitter" })
add({ source = "nvim-tree/nvim-tree.lua" })
add({ source = "lewis6991/gitsigns.nvim" })
add({ source = "github/copilot.vim" })
add({ source = "rafamadriz/friendly-snippets" })
add({
	source = "Saghen/blink.cmp",
	depends = { "rafamadriz/friendly-snippets" },
	checkout = "v1.6.0"
})
add({ source = "folke/trouble.nvim" })
add({ source = "tpope/vim-fugitive" })

require("plugins.mini")
require("plugins.lspconfig")
require("plugins.treesitter")
require("plugins.nvimtree")
require("plugins.gitsigns")
require("plugins.cmp")
require("plugins.trouble")
