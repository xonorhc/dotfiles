require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "hyprls" }
vim.lsp.enable(servers)
