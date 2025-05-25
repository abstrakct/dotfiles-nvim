-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del
local opts = { noremap = true, silent = true }

-- Disable default keymaps
unmap("n", "<leader>xL")
unmap("n", "<leader>xl")
unmap("n", "<leader>xq")
unmap("n", "<leader>xt")
unmap("n", "<leader>xT")
unmap("n", "<leader>xx")
unmap("n", "<leader>xX")
unmap("n", "<leader>l")

-- Keymaps for "Trouble"
map("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List" })
map("n", "<leader>xt", "<cmd>Trouble todo toggle<cr>", { desc = "TODO/FIXME List" })
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics" })

-- Custom keymaps
map("n", "ø", ":", nil)
map("i", "jj", "<esc>", nil)

map("n", "gt", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "gr", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
-- map("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
-- map("n", "<s-tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Resize windows
-- map("n", "<leader>rl", [[<cmd>vertical resize +5<cr>]], { desc = "Increase window width" })
-- map("n", "<leader>rh", [[<cmd>vertical resize -5<cr>]], { desc = "Decrease window width" })

-- Comment with ctrl-slash
map("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.current()
end, opts)

local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
vim.keymap.set("x", "<C-_>", function()
  vim.api.nvim_feedkeys(esc, "nx", false)
  require("Comment.api").toggle.linewise(vim.fn.visualmode())
end)

-- Normal mode: change current word with enter
map("n", "<cr>", "ciw")

-- Keep cursor position after yanking
map("v", "y", "ygv<esc>")

-- Switch between recently used buffers
-- map("n", "<BS>", ":b#<CR>", { silent = true })

-- Easier redo
map("n", "U", "<C-r>")

-- Better x?
map("n", "X", '"_x', opts)

map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

map("n", "<leader>o", ":bd<CR>", { desc = "Delete buffer" })

-- Stay in visual mode while indenting
map("v", ">", ">gv", opts)
map("v", "<", "<gv", opts)

-- Keep last yanked when pasting
map("v", "p", '"_dP', opts)

-- Toggle folding
map("n", "<backspace>", "za")
map("n", "<delete>", "zM")

-- Move lines up/down
map("n", "<C-k>", ":m .-2<cr>==", { silent = true })
map("n", "<C-j>", ":m .+1<cr>==", { silent = true })

-- Tabs
map("n", "t", ":e ")
map("n", "<tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-tab>", ":BufferLineCyclePrev<CR>", opts)

-- Leader
map("n", "<leader>e", "<cmd>Neotree focus<cr>", { desc = "Focus File Explorer" })
map("n", "<leader>ll", "<cmd>nohlsearch<cr>", { desc = "Turn off search highlighting" })
map("n", "<leader>lg", function()
  Snacks.lazygit({ cwd = LazyVim.root.git() })
end, { desc = "Lazygit (Root Dir)" })
map("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>xv", "<cmd>lua vim.diagnostic.config({ virtual_text = false })<cr>", {
  silent = true,
  desc = "Turn off virtual_text",
})
map("n", "<leader>xV", "<cmd>lua vim.diagnostic.config({ virtual_text = true })<cr>", {
  silent = true,
  desc = "Turn on virtual_text",
})

local crates = require("crates")
vim.keymap.set("n", "<leader>rv", crates.show_versions_popup, { desc = "Show crate versions", silent = true })
vim.keymap.set("n", "<leader>rf", crates.show_features_popup, { desc = "Show crate features", silent = true })
vim.keymap.set("n", "<leader>rd", crates.show_dependencies_popup, { desc = "Show crate dependencies", silent = true })
