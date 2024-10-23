return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    ---@type AstroCoreOpts
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            ".git",
            ".DS_Store",
            "thumbs.db",
          },
          never_show = {},
        },
      },
      vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}),
      buffers = { follow_current_file = { enabled = true } },
    },
  },
}
