require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "jsonls",
  "ts_ls",
  "clangd",
}

vim.lsp.enable(servers)
