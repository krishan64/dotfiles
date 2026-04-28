return {
  "folke/tokyonight.nvim",
	lazy = false,  -- make sure we load this during startup if it is your main colorscheme
  priority = 1000,  -- make sure to load this before all the other start plugins
  opts = {},
  config = function()
		require("tokyonight").setup({
			style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
			transparent = true, -- Enable this to disable setting the background color
			dim_inactive = false,
			lualine_bold = true,
		})
    vim.cmd([[colorscheme tokyonight]])
  end,
}
