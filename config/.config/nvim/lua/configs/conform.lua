local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- python = { "isort", "black" },
    -- go = { "goimports", "gofmt" }, -- Conform will run multiple formatters sequentially
    -- rust = { "rustfmt", lsp_format = "fallback" }, -- You can also customize some of the format options for the filetype
    javascript = { "prettierd", "prettier", stop_after_first = true }, -- Conform will run the first available formatter
    css = { "prettier" },
    html = { "prettier" },
    sh = { "shfmt" },
    sql = { "pg_format", "sql-formatter", "sqlfmt", stop_after_first = true },
    markdown = { "prettierd" },
    yaml = { "prettierd" },
    json = { "prettierd" },

    -- -- You can use a function here to determine the formatters dynamically
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,

    -- ["*"] = { "codespell" }, -- Use the "*" filetype to run formatters on all filetypes.
    ["_"] = { "trim_whitespace" }, -- Use the "_" filetype to run formatters on filetypes that don't have other formatters configured.
  },

  -- Map of treesitter language to file extension
  lang_to_ext = {
    bash = "sh",
    c_sharp = "cs",
    elixir = "exs",
    javascript = "js",
    julia = "jl",
    latex = "tex",
    markdown = "md",
    python = "py",
    ruby = "rb",
    rust = "rs",
    teal = "tl",
    typescript = "ts",
  },

  lang_to_formatters = { json = { "jq" } }, -- Map of treesitter language to formatters to use
  lang_to_ft = { bash = "sh" }, -- Map of treesitter language to filetype
  ext_parsers = { qmd = "markdown" }, -- Use a specific prettier parser for a file extension

  -- Use a specific prettier parser for a filetype
  ft_parsers = {
    javascript = "babel",
    javascriptreact = "babel",
    typescript = "typescript",
    typescriptreact = "typescript",
    vue = "vue",
    css = "css",
    scss = "scss",
    less = "less",
    html = "html",
    json = "json",
    jsonc = "json",
    yaml = "yaml",
    markdown = "markdown",
    ["markdown.mdx"] = "mdx",
    graphql = "graphql",
    handlebars = "glimmer",
  },

  ignore_errors = false, -- Set to true to ignore errors
  -- default_format_opts = { lsp_format = "fallback" }, -- Set this to change the default values when calling conform.format()
  -- format_on_save = { timeout_ms = 500 }, -- If this is set, Conform will run the formatter on save.
  -- format_after_save = { lsp_format = "fallback" }, -- If this is set, Conform will run the formatter asynchronously after save.
  notify_on_error = true, -- Conform will notify you when a formatter errors
  notify_no_formatters = true, -- Conform will notify you when no formatters are available for the buffer

  -- Customize formatters
  formatters = {
    shfmt = {
      append_args = { "-i", "2" },
    },
  },
}

return options
