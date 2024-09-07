return {
    
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...},
    "jiangmiao/auto-pairs",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-tree.lua",

    {
	"L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
    },

    {
      "ibhagwan/fzf-lua",
      config = function()
        -- calling `setup` is optional for customization
        local actions = require'fzf-lua.actions'
        require("fzf-lua").setup({
            "borderless",
            winopts = { split = "belowright new" },
        })
      end
    },
}
