return {
  "Saghen/blink.cmp",
  opts = {
    completion = {
      list = { selection = { preselect = false } },
    },
    keymap = {
      -- "enter" als Basis-Preset beibehalten, aber Tab überschreiben
      preset = "enter",
      -- Tab: durch Vorschläge scrollen
      ["<Tab>"] = { "select_next", "fallback" },
      -- Shift+Tab: rückwärts scrollen
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    -- Optional: Verhindert, dass Vorschläge automatisch eingefügt werden
    -- completion = { list = { selection = "auto_insert" } },
  },
}
