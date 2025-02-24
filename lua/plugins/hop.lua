return {
  "smoka7/hop.nvim",
  event = "VeryLazy",
  opts = {
    keys = "jklasdfghqwertyuiopzxcvbnm",
    create_hl_autocmd = false,
    dim_unmatched = false,
    teasing = false,
  },

  config = function(_, opts)
    vim.api.nvim_set_hl(0, "HopNextKey", { fg = "#000000", bg = "#CCFF88", bold = true })
    local hop = require("hop")

    local keymap = {
      ["f"] = function() hop.hint_char2({ current_line_only = true, jump_on_sole_occurrence = false, }) end,
      ["t"] = function() hop.hint_char2({ current_line_only = true, jump_on_sole_occurrence = false, hint_offset = -1, }) end,
    }

    local modes = { "n", "x", "o" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func, { remap = true })
    end
    hop.setup(opts)
  end,
}

