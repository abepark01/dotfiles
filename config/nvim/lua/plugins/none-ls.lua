return {
  "nvimtools/none-ls.nvim",
  optional = true,
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.debug = true

    opts.sources = opts.sources or {}
    --table.insert(opts.sources, nls.builtins.diagnostics.erb_lint)
    table.insert(opts.sources, nls.builtins.diagnostics.rubocop)
    table.insert(
      opts.sources,
      nls.builtins.diagnostics.sqlfluff.with({
        extra_args = { "--dialect", "postgres" }, -- change to your dialect
      })
    )
    table.insert(opts.sources, nls.builtins.diagnostics.tidy)
    table.insert(opts.sources, nls.builtins.diagnostics.zsh)

    table.insert(opts.sources, nls.builtins.formatting.csharpier)
    --table.insert(opts.sources, nls.builtins.formatting.erb_lint)
    table.insert(opts.sources, nls.builtins.formatting.htmlbeautifier)
    table.insert(opts.sources, nls.builtins.formatting.prettierd)
    table.insert(opts.sources, nls.builtins.formatting.prisma_format)
    table.insert(opts.sources, nls.builtins.formatting.rubocop)
    table.insert(
      opts.sources,
      nls.builtins.formatting.sqlfluff.with({
        extra_args = { "--dialect", "postgres" }, -- change to your dialect
      })
    )
  end,
}
