return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.goimports, -- go
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.prettier, -- CSS HTML JSON YAML MARKDOWN SCSS
				null_ls.builtins.diagnostics.eslint_d,  -- javascript
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
