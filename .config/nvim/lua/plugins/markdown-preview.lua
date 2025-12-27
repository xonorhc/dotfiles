return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_theme = "dark"
    -- vim.g.mkdp_markdown_css = "path/to/file.css"
    vim.g.mkdp_preview_options = {
      disable_filename = true,
    }
  end,
  ft = { "markdown" },
}
