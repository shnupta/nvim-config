local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

local function select_clangd_binary()
    local root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git")(vim.fn.getcwd())
    if root_dir and vim.fn.filereadable(root_dir .. "/build.json") then
        return "clangd-cc-env"
    else
        return "clangd"
    end
end

lspconfig.clangd.setup({
    filetypes = { "c", "cpp", "objc", "objcpp" },
    cmd = {
        select_clangd_binary(),
        "--pretty",
        "--background-index",
        "--compile-commands-dir=${workspaceFolder}/build/",
        "--clang-tidy",
        "--all-scopes-completion",
        "-j=8",
    },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
})

lspconfig.pyright.setup({
    filetypes = { "python" },
})
