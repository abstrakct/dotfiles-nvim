return {
  "folke/noice.nvim",
  config = function()
    local noice = require("noice")
    noice.setup({
      -- cmdline = {},
      -- messages = {},
      -- popupmenu = {},
      -- redirect = {},
      -- commands = {},
      -- notify = {},
      -- markdown = {},
      -- health = {},
      -- lsp = {},
      -- status = {},
      -- format = {},
      -- throttle = {},
      -- debug = {},
      -- log = {},
      -- log_max_size = {},
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
        {
          filter = {
            event = "msg_show",
            kind = "search_count",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      views = {
        cmdline_popup = {
          position = {
            row = 20,
            col = "50%",
          },
          size = {
            width = 120,
            height = "auto",
          },
          border = {
            style = "rounded",
            -- padding = { 2, 3 },
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 23,
            col = "50%",
          },
          size = {
            width = 120,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    })
  end,
}
