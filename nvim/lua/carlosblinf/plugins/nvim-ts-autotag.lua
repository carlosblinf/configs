return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			-- import nvim-treesitter plugin
			local autotag = require("nvim-ts-autotag")

			-- configure ts-autotag
			autotag.setup({
				opts = {
					-- Defaults
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				per_filetype = {
					["html"] = {
						-- enable_close = false
					},
				},
			})
		end,
	},
}
