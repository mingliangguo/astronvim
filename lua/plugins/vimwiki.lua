-- Some references I used for this config:
-- - [Setting up VimWiki in Neovim ](https://blog.mauromotion.com/pkm/vim/2023/09/29/vimwiki-setup-in-neovim.html)
--   - syntax highlight config
--   - cheatsheet for keyboard shortcuts
-- - useful shortcuts
--   - update diary index: `<leader> w <leader> i`
--   - open vimwiki: `<leader> ww`
--   - open vimwiki diary: `<leader> wi`
--   - update diary today: `<leader> w <leader> w`
--   - Telescope: search VimWiki’s notes titles: `<leader> fv`
--   - Telescope: live grep inside VimWiki directory: `<leader> fw`

return {
  {
    "vimwiki/vimwiki",
    dependencies = {
      "ElPiloto/telescope-vimwiki.nvim",
    },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Dropbox/vimwiki/LifeWiki",
          syntax = "markdown",
          ext = ".md",
          links_space_char = "_",
          auto_tags = 1,
        },
        {
          path = "~/Dropbox/vimwiki/TechWiki",
          syntax = "markdown",
          ext = ".md",
          links_space_char = "_",
          auto_tags = 1,
        },
        {
          path = "~/Dropbox/vimwiki/WorkWiki",
          syntax = "markdown",
          ext = ".md",
          links_space_char = "_",
          auto_tags = 1,
        },
      }

      vim.g.vimwiki_syntax_plugins = {
        codeblock = {
          ["```lua"] = { parser = "lua" },
          ["```python"] = { parser = "python" },
          ["```javascript"] = { parser = "javascript" },
          ["```bash"] = { parser = "bash" },
          ["```html"] = { parser = "html" },
          ["```css"] = { parser = "css" },
          ["```c"] = { parser = "c" },
          ["```java"] = { parser = "java" },
        },
      }

      vim.g.vimwiki_auto_header = 1
      vim.g.vimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
        [".mdown"] = "markdown",
      }
      vim.g.vimwiki_global_ext = 0 -- don't treat all md files as vimwiki (0)
      vim.g.vimwiki_folding = "list"
      vim.g.vimwiki_hl_headers = 1 -- use alternating colours for different heading levels
      vim.g.vimwiki_markdown_link_ext = 1 -- add markdown file extension when generating links
      vim.g.taskwiki_markdown_syntax = "markdown"
      vim.g.indentLine_conceallevel = 2 -- indentline controlls concel
      --vim.set.o.conceallevel = 1 -- so that I can see `` and full urls in markdown files
      --
      require("telescope").load_extension "vw"
      vim.keymap.set("n", "<leader>vww", require("telescope").extensions.vimwiki.vimwiki, {})
      vim.keymap.set("n", "<leader>vwg", require("telescope").extensions.vimwiki.live_grep, {})

      -- vim.api.nvim_set_keymap("n", "<F3>", ":VimwikiDiaryPrevDay<CR>", { noremap = true, silent = true, nowait = true })
      -- vim.api.nvim_set_keymap("n", "<F4>", ":VimwikiDiaryNextDay<CR>", { noremap = true, silent = true, nowait = true })
    end,
    config = function() end,
  },
}
