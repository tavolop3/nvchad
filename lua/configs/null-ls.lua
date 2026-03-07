local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.clang_format,
    -- null_ls.builtins.diagnostics.cpplint, -- Descomentalo si querés un linter estricto

    -- Opcional general
    null_ls.builtins.completion.spell, -- Te sugiere correcciones ortográficas en comentarios
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    require "none-ls.diagnostics.eslint", -- requires none-ls-extras.nvim
  },
}
