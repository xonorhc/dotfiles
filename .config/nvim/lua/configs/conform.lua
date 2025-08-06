local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    sql = { "pg_format", "sql-formatter", "sqlfmt", stop_after_first = true },
    sh = { "shfmt" },
    python = { "isort", "black" },
    -- rust = { "rustfmt", lsp_format = "fallback" },
    -- python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
