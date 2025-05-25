return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = true,
      exclude = { "rust" },
    },
  },
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
        disabled = { "unresolved-proc-macro" },
        enableExperimental = true,
      },
    },
  },
}
