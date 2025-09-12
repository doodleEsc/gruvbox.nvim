local M = {}

-- 获取lualine主题
function M.get()
  local gruvbox = require("gruvbox")
  local colors = gruvbox.get_colors()

  -- Map gruvbox colors to lualine theme colors
  local theme_colors = {
    black = colors.bg0,
    white = colors.fg1,
    red = colors.red,
    green = colors.green,
    blue = colors.blue,
    yellow = colors.yellow,
    orange = colors.orange,
    purple = colors.purple,
    aqua = colors.aqua,
    gray = colors.gray,
    darkgray = colors.bg1,
    lightgray = colors.bg2,
    inactivegray = colors.bg4,
  }

  return {
    normal = {
      a = { bg = theme_colors.gray, fg = theme_colors.black, gui = "bold" },
      b = { bg = theme_colors.lightgray, fg = theme_colors.white },
      c = { bg = theme_colors.darkgray, fg = theme_colors.gray },
    },
    insert = {
      a = { bg = theme_colors.blue, fg = theme_colors.black, gui = "bold" },
      b = { bg = theme_colors.lightgray, fg = theme_colors.white },
      c = { bg = theme_colors.darkgray, fg = theme_colors.gray },
    },
    visual = {
      a = { bg = theme_colors.yellow, fg = theme_colors.black, gui = "bold" },
      b = { bg = theme_colors.lightgray, fg = theme_colors.white },
      c = { bg = theme_colors.darkgray, fg = theme_colors.gray },
    },
    replace = {
      a = { bg = theme_colors.red, fg = theme_colors.black, gui = "bold" },
      b = { bg = theme_colors.lightgray, fg = theme_colors.white },
      c = { bg = theme_colors.darkgray, fg = theme_colors.gray },
    },
    command = {
      a = { bg = theme_colors.green, fg = theme_colors.black, gui = "bold" },
      b = { bg = theme_colors.lightgray, fg = theme_colors.white },
      c = { bg = theme_colors.darkgray, fg = theme_colors.gray },
    },
    inactive = {
      a = { bg = theme_colors.darkgray, fg = theme_colors.inactivegray, gui = "bold" },
      b = { bg = theme_colors.darkgray, fg = theme_colors.inactivegray },
      c = { bg = theme_colors.darkgray, fg = theme_colors.inactivegray },
    },
  }
end

return M
