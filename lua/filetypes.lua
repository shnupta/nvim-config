local api = vim.api
local opt_local = vim.opt_local
local bo = vim.bo

local filetype_settings = {
	{
		pattern = {"*.xml", "xml", "*.xsd", "xsd"},
		callback = function()
			opt_local.expandtab = true
			opt_local.shiftwidth = 2
			opt_local.tabstop = 2
		end,
	},
	{
		pattern = {"*.proto", "proto"},
		callback = function()
			opt_local.expandtab = true
			opt_local.shiftwidth = 2
			opt_local.tabstop = 2
		end,
	},
	{
		pattern = {"*.nihil", "nihil"},
		callback = function()
			bo.filetype = "proto"
		end,
	}
}

for _, setting in ipairs(filetype_settings) do
    api.nvim_create_autocmd({"BufEnter", "FileType"}, {
        pattern = setting.pattern,
        callback = setting.callback,
    })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.expandtab = true   -- use spaces, not tabs
    vim.bo.shiftwidth = 4     -- indent width
    vim.bo.tabstop = 4        -- how many spaces a tab counts for
    vim.bo.softtabstop = 4    -- how many spaces to insert on Tab
  end,
})
