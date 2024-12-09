return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "rust",
        "ron",
        "java",
        "regex",
        "vim",
        "yaml",
        "toml",
      },
    },
    highlight = { enable = true },
    indent = { enable = true },
    build = ":TSUpdate",
    sync_install = false,
  },
}
