return {

    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "saadparwaiz1/cmp_luasnip",
    
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
