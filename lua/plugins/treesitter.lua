require("nvim-treesitter.configs").setup({
  ensure_installed = { "cpp", "python", "proto", "xml", "zig" },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
})
