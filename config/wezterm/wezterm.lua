return {
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  default_prog = { "bash" },
  color_scheme = "Catppuccin Macchiato",
  font_size = 14,
  bidi_enabled = true,
  bidi_direction = "AutoLeftToRight",
  keys = {
    {
      key = ";",
      mods = "CTRL",
      action = require("wezterm").action.SendKey { key = ";", mods = "CTRL" },
    },
  },
}
