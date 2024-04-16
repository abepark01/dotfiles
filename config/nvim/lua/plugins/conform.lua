return {
  "stevearc/conform.nvim",
  optional = true,
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      ["javascript"] = { "prettierd" },
      ["python"] = { "black" },
    },
  },
}
