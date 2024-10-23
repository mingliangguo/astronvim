return {
  {
    "vimwiki/vimwiki",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Dropbox/vimwiki/LifeWiki",
          syntax = "markdown",
          ext = ".md",
        },
        {
          path = "~/Dropbox/vimwiki/TechWiki",
          syntax = "markdown",
          ext = ".md",
        },
        {
          path = "~/Dropbox/vimwiki/WorkWiki",
          syntax = "markdown",
          ext = ".md",
        },
      }
    end,
    config = function()
      require("vimwiki").setup {
        -- Configuration here, or leave empty to use defaults
        --
      }
    end,
  },
}
