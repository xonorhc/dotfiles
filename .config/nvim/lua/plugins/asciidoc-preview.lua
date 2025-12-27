return {
  "tigion/nvim-asciidoc-preview",
  ft = { "asciidoc" },
  build = "cd server && npm install --omit=dev --no-save",
  ---@module 'asciidoc-preview'
  ---@type asciidoc-preview.Config
  opts = {
    server = {
      converter = "js",
      hostname = "localhost",
      port = 11235,
    },
    preview = {
      position = "sync",
    },
  },
}
