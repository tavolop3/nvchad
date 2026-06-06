local options = {
  formatters_by_ft = {
    -- Usamos prettierd con fallback a prettier.
    -- 'stop_after_first = true' hace que si prettierd está corriendo lo use,
    -- y si falla, intente con prettier normal.
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },

    lua = { "stylua" },
    css = { "prettierd", "prettier", stop_after_first = true },
    html = { "prettierd", "prettier", stop_after_first = true },
    python = { "isort", "black" },
  },

  format_on_save = {
    timeout_ms = 500,
    -- NOTA: En las versiones actuales de conform, cambió de 'lsp_fallback'
    -- a 'lsp_format' con el valor "fallback". Es un cambio sutil pero vital.
    lsp_format = "fallback",
  },
}

return options
