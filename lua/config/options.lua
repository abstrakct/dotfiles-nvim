-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.diagnostic.config({ virtual_text = false })

-- Keys
-- vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

--- Gruvbox baby!
vim.g.gruvbox_baby_background_color = "hard"
vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.gruvbox_baby_function_style = "NONE"
-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 0
-- Enable transparent mode
vim.g.gruvbox_baby_transparent_mode = 0

---- Options ----
-- Turn off whitespace shit
vim.opt.list = false

-- Tabs and indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Codeium
-- vim.g.codeium_enabled = false
-- vim.g.codeium_filetypes_disabled_by_default = false
