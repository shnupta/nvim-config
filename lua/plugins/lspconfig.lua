local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
	          runtime = {
            -- Tell the language server which version of Lua you're using (e.g., LuaJIT)
            version = 'LuaJIT',
            -- Add Neovim runtime files to the library path
            library = vim.api.nvim_get_runtime_file("", true),
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },	},
	},
})

lspconfig.clangd.setup({
  filetypes = { "c", "cpp", "objc", "objcpp" },
  cmd = {
    "clangd",
    "--pretty",
    "--background-index",
    "--compile-commands-dir=${workspaceFolder}/build/",
    "--clang-tidy",
    "--all-scopes-completion",
    "-j=8",
  },
})

lspconfig.pyright.setup({
  filetypes = { "python" },
})
