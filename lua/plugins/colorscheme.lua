return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme "nord"
  end,
}
