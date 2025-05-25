return {
  "codethread/qmk.nvim",
  config = function()
    ---@type qmk.UserConfig
    local conf = {
      name = "LAYOUT",
      layout = {
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "_ _ _ _ x x x _ _ _ x x x _ _ _ _",
      },
      comment_preview = {
        keymap_overrides = {
          HOMEALT = "q/alt",
          HOMECTL = "w/ctl",
          HOMESFT = "e/shf",
          HOMEGUI = "f/gui",
          HOME_I = "i/shf",
          HOME_O = "o/ctl",
          OSMLSFT = "shft",
          S_RBRC = "/",
          QK_BOOT = "boot",
          KC_SYRQ = "syrq",
          EXITENT = "exit",
          KC_LOWR = "LOW",
          KC_RAIS = "RAI",
          ["LT%(_RAISE, KC_TAB%)"] = "tab/rai",
          ["LT%(_LOWER, S_RBRC%)"] = "/ low",
          ["TD%(X_OE%)"] = "æøå",
          ["MO%(_LOWER%)"] = "LOW",
          ["MO%(_RAISE%)"] = "RAI",
          ["MO%(_THREE%)"] = "THREE",
          ["MO%(_FOUR%)"] = "FOUR",
          ["DF%(_TARMAK1%)"] = "TM1",
          ["DF%(_COLE%)"] = "COLE",
          ["DF%(_NORM%)"] = "NORM",
          ["TG%(_DCSS%)"] = "DCSS",
        },
      },
    }
    require("qmk").setup(conf)
  end,
}
