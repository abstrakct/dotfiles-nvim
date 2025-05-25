return {
  "hiphish/rainbow-delimiters.nvim",

  config = function()
    require("rainbow-delimiters.setup").setup({
      highlight = {
        "RainbowDelimiterYellow",
        "RainbowDelimiterViolet",
        "RainbowDelimiterOrange",
        "RainbowDelimiterBlue",
        "RainbowDelimiterGreen",
        "RainbowDelimiterCyan",
        "RainbowDelimiterRed",
      },
    })
  end,
}
