return {
	{
		"ellisonleao/glow.nvim",
		config = function()
			require("glow").setup({
				cmd = "Glow",
				style = "dark",
				width = 120,
			})
		end,
	},
}
