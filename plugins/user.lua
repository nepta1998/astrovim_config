return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- colorschema
  {
    "catppuccin/nvim",
    name = "macchiato", -- latte, frappe, macchiato, mocha
    config = function()
      require("catppuccin").setup {
        flavour = "frappe",
        transparent_background = true,
      }
    end,
  },
}
