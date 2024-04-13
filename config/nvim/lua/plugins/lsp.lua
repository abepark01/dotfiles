-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- tools
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"css-lsp",
        "diagnostic-languageserver",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "erb-lint",
        "eslint_d",
        "graphql-language-service-cli",
        "html-lsp",
        "htmlbeautifier",
        "json-lsp",
        "prettierd",
        "prisma-language-server",
        "rubocop",
        "ruby-lsp",
        "solargraph",
        "stimulus-language-server",
        "stylua",
				"tailwindcss-language-server",
				"typescript-language-server",
        "yaml-language-server"
			})
		end,
	}
}
