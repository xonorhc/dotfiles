return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "dark"
    end,
    ft = { "markdown" },
  },

  {
    "ray-x/web-tools.nvim",
    opts = {},
    cmd = { "BrowserPreview", "BrowserRestart", "BrowserStop" },
  },

  -- {
  --   "turbio/bracey.vim",
  --   cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
  --   build = "npm install --prefix server",
  -- },

  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = { "CodeSnap" },
    opts = {
      mac_window_bar = false,
      title = "CodeSnap.nvim",
      code_font_family = "SpaceMono Nerd Font",
      watermark_font_family = "SpaceMono Nerd Font",
      watermark = "",
      bg_theme = "sea",
      breadcrumbs_separator = "/",
      has_breadcrumbs = false,
      has_line_number = false,
      show_workspace = false,
      min_width = 0,
      bg_x_padding = 25,
      bg_y_padding = 25,
      save_path = os.getenv "XDG_PICTURES_DIR" or (os.getenv "HOME" .. "/Pictures"),
    },
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
