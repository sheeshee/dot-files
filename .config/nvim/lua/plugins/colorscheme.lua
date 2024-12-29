return {
	-- add the colourscheme repo
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000, -- ensure that this loads before all other start lazy=false plugins,
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme sonokai]])
	end,
}
