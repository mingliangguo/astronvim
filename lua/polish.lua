-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.filetype.add {
  extension = {
    j2 = "jinja",
    jinja = "jinja",
    jinja2 = "jinja",
  },
}

vim.treesitter.language.register("htmldjango", "jinja")
