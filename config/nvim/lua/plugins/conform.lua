return {
  "stevearc/conform.nvim",
  optional = true,
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
      ruby = { "standardrb" },
      erb = { { "erb-formatter" } },
      eruby = { "htmlbeautifier" },
    },
  },
}
