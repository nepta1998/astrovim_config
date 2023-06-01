return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
      require("neo-tree").setup {
        filesystem = {
          filtered_items = {
              visible = true, -- when true, they will just be displayed differently than normal items
              hide_dotfiles = false,
              hide_gitignored = false,
              hide_hidden = false, -- only works on Windows for hidden files/directories
          },
        },
      }
    end,
}
