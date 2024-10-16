local get_colors = require "theme.colors"

local opts = function()
  local colors = get_colors()
  vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = colors.red, bg = colors.background_light })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = colors.background_light })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = colors.background_light })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { bg = colors.red })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = colors.red })

  return {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true,         -- use a classic bottom cmdline for search
      command_palette = true,       -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false,           -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,       -- add a border to hover docs and signature help
    },
    routes = {
      { filter = { find = "E486" },                                   view = "mini" },
      { filter = { event = "msg_show", kind = "", find = "written" }, view = "mini" },
    }
  }
end


return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = opts,
  dependencies = {
    "MunifTanjim/nui.nvim",
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify",
  }
}
