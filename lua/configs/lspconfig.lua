-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "jsonls",
  "pyright",
  "clangd",
  "hyprls",
  "lua_ls",
  "zls",
  "gopls",
  "bashls",
  "astro-language-server",
}
--clangd, "rust_analyzer"

vim.lsp.enable(servers)
-- for _, name in pairs(servers) do
--   vim.lsp.config(name, {})
--   vim.lsp.enable(name)
-- end
--
-- if you dont want to call the enable method in the loop, just pass a table.
-- vim.lsp.enable(vim.tbl_keys(servers))
-- vim.lsp.enable({"pyright", "clangd"})

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
