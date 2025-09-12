local M = {}

function M.get()
  local gruvbox = require("gruvbox")
  local colors = gruvbox.get_colors()
  local config = gruvbox.config

  return {

    buffer_selected = {
      fg = colors.fg0,
      bg = config.transparent_mode and "NONE" or colors.bg0,
      bold = config.bold,
      italic = false,
    },

    close_button_selected = {
      fg = colors.red,
      bg = config.transparent_mode and "NONE" or colors.bg0,
      bold = config.bold,
    },

    separator_selected = {
      bg = config.transparent_mode and "NONE" or colors.bg0,
    },

    duplicate_selected = {
      fg = colors.fg3,
      bg = config.transparent_mode and "NONE" or colors.bg0,
      italic = true,
    },

    modified_selected = {
      fg = colors.orange,
      bg = config.transparent_mode and "NONE" or colors.bg0,
    },
  }
end

return M
