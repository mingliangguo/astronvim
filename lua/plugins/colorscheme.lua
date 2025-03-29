return {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      styles = {
        keywords = { "bold" },
        functions = { "italic" },
      },
      integrations = {
        alpha = false,
        neogit = false,
        nvimtree = false,
        treesitter_context = false,
        rainbow_delimiters = false,
        mini = { enabled = false },
        dropbar = { enabled = false },
        illuminate = { enabled = false },
        mason = true,
        noice = true,
        snacks = {
          enabled = true,
          indent_scope_color = "overlay2",
        },
        neotest = true,
        blink_cmp = true,
        which_key = true,
        nvim_surround = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
