local wezterm = require("wezterm")

return {
  -- Copy
  {
    key = "C",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo("Clipboard"),
  },

  -- Paste
  {
    key = "V",
    mods = "CTRL|SHIFT",
    action = wezterm.action.PasteFrom("Clipboard"),
  },

  -- Vertical Split
  {
    key = "_",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical({
      domain = "CurrentPaneDomain",
    }),
  },

  -- Horizontal Split
  {
    key = "|",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal({
      domain = "CurrentPaneDomain",
    }),
  },

  -- Navigate Splits
  {
    key = 'k',
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection('Up'),
  },

  {
    key = 'j',
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection('Down'),
  },

  {
    key = 'h',
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection('Left'),
  },

  {
    key = 'l',
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection('Right'),
  },
}
