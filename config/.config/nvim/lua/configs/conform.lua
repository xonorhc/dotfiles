local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    sh = { "shfmt" },
    sql = { "pg_format", "sql-formatter", "sqlfmt", stop_after_first = true },
  },

  opts = function(_, opts)
    if not opts.formatters_by_ft then
      opts.formatters_by_ft = {}
    end
    for _, filetype in ipairs {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "css",
      "scss",
      "less",
      "html",
      "json",
      "jsonc",
      "yaml",
      "markdown",
      "markdown.mdx",
      "graphql",
      "handlebars",
      "svelte",
      "astro",
      "htmlangular",
    } do
      opts.formatters_by_ft[filetype] = { "prettierd" }
    end
  end,

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
