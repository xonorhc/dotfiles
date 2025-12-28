return {
  "mistricky/codesnap.nvim",
  build = "make",
  version = "^1",
  lazy = true,
  cmd = { "CodeSnap", "CodeSnapSave" },
  keys = {
    { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
  },
  config = function()
    require("codesnap").setup {
      save_path = "~/Pictures",
      mac_window_bar = true,
      title = "CodeSnap.nvim",
      code_font_family = "JetBrainsMono Nerd Font",
      watermark_font_family = "JetBrainsMono Nerd Font",
      watermark = "CodeSnap.nvim",
      bg_theme = "bamboo",
      breadcrumbs_separator = "/",
      has_breadcrumbs = false,
      has_line_number = false,
      show_workspace = false,
      min_width = 0,
      bg_x_padding = 122,
      bg_y_padding = 82,
    }
  end,
}
