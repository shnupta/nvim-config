vim.keymap.set("n", "<leader>s", ":source<CR>", { desc = "Source current file" })

-- picking
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>", { desc = "Grep files" })
vim.keymap.set("n", "<leader>fd", ":Pick diagnostic<CR>", { desc = "Pick lsp diagnostics" })
vim.keymap.set("n", "<leader>fb", ":Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>fs", function()
  vim.cmd("Pick lsp scope='workspace_symbol'")
end, { desc = "Pick lsp workspace symbols" })
vim.keymap.set("n", "<leader>wk", ":Pick keymaps<CR>", { desc = "Pick keymaps" })
vim.keymap.set("n", "<leader>h", ":Pick help<CR>", { desc = "Pick help" })
vim.keymap.set("n", "<leader>v", ":Pick visit_paths<CR>", { desc = "Pick visits" })

vim.keymap.set("n", "<C-g>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })

vim.keymap.set("n", ",a", ":cclose<CR>")

-- window moving
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<esc>", ":nohl<CR>")

-- lsp
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto declaration" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Goto type definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto references" })

-- turn off default vim mode indicator
vim.g.noshowmode = true

-- copilot
vim.g.copilot_proxy_strict_ssl = false
vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<C-Y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- tabs
vim.keymap.set("n", "tt", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "tp", ":tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "tn", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "tc", ":tabclose<CR>", { desc = "Close tab" })
