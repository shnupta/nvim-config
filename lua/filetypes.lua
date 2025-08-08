vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.expandtab = true   -- use spaces, not tabs
    vim.bo.shiftwidth = 4     -- indent width
    vim.bo.tabstop = 4        -- how many spaces a tab counts for
    vim.bo.softtabstop = 4    -- how many spaces to insert on Tab
  end,
})
