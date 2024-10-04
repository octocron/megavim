--------------------------------------------------------------------------------
-- Color Scheme
--------------------------------------------------------------------------------
return {
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			priority = 900,
			integrations = {
        gitsigns = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				nvimtree = true,
			},
		},
		config = function(_, opts)
			require("tokyodark").setup(opts)
			vim.cmd([[colorscheme tokyodark]])
			-- illuminate highlighting
			vim.cmd([[highlight def IlluminatedWordText cterm=underline gui=undercurl guifg=#ffaa00]])
			vim.cmd([[highlight def IlluminatedWordRead  cterm=underline gui=undercurl guifg=#ffaa00]])
			vim.cmd([[highlight def IlluminatedWordWrite cterm=underline gui=undercurl guifg=#ffaa00]])
			-- change color for arrows iin nvim-tree
			vim.cmd([[ highlight def NvimTreeFolderArrowClosed guifg=#228800 ]])
			vim.cmd([[ highlight def NvimTreeFolderArrowOpen guifg=#ee4400 ]])
		end,
	},
}
