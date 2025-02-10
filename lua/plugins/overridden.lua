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
      vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts),
      -- preformat json with jq
      vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost" }, {
        pattern = "*.json",
        command = ":%!jq .",
      }),
      buffers = { follow_current_file = { enabled = true } },
    },
  },
}
