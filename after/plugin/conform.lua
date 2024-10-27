require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff", "black", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		go = { "goimports", "gci" },
		php = { "pretty-php" },
		html = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		timeout_ms = 100,
		lsp_format = "fallback",
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
