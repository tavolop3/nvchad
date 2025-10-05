-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- EXAMPLE
local servers = { "html", "cssls", "ts_ls", "jsonls", "pyright", "clangd", "hyprls", "lua_ls" } --clangd, "rust_analyzer"
local nvlsp = require "nvchad.configs.lspconfig"
-- por las dudas capabilities antes estaba dentro del for con nvlsp.capabilities
local capabilities = nvlsp.capabilities
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- Custom rust-analyzer setup
-- lspconfig.rust_analyzer.setup {
--   on_attach = function(client, bufnr)
--     nvlsp.on_attach(client, bufnr) -- Use NvChad's on_attach
--     vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
--   end,
--   on_init = nvlsp.on_init,
--   capabilities = capabilities,
--   settings = {
--     ["rust-analyzer"] = {
--       imports = {
--         granularity = {
--           group = "module",
--         },
--         prefix = "self",
--       },
--       cargo = {
--         buildScripts = {
--           enable = true,
--         },
--       },
--       procMacro = {
--         enable = true,
--       },
--     },
--   },
-- }
