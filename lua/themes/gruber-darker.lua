-- Tema Gruber Darker para NvChad
-- Basado en la especificación del tema Gruber Darker para Emacs

-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- UI
M.base_30 = {
  white = "#ffffff",
  black = "#000000",
  darker_black = "#101010", -- 6% darker than black
  black2 = "#282828", -- 6% lighter than black
  one_bg = "#453d41", -- 10% lighter than black
  one_bg2 = "#484848", -- 6% lighter than one_bg
  one_bg3 = "#52494e", -- 6% lighter than one_bg2
  grey = "#565f73", -- 40% lighter than black (approx)
  grey_fg = "#303540", -- 10% lighter than grey
  grey_fg2 = "#95a99f", -- 5% lighter than grey
  light_grey = "#f4f4ff",
  red = "#f43841",
  baby_pink = "#ff4f58",
  pink = "#9e95c7",
  line = "#484848", -- 15% lighter than black
  green = "#73c936",
  vibrant_green = "#73c936",
  nord_blue = "#565f73",
  blue = "#96a6c8",
  seablue = "#96a6c8",
  yellow = "#ffdd33",
  sun = "#ffdd33",
  purple = "#9e95c7",
  dark_purple = "#9e95c7",
  teal = "#95a99f",
  orange = "#cc8c3c",
  cyan = "#96a6c8",
  statusline_bg = "#282828",
  lightbg = "#453d41",
  pmenu_bg = "#282828",
  folder_bg = "#96a6c8",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#181818",
  base01 = "#282828",
  base02 = "#453d41",
  base03 = "#484848",
  base04 = "#52494e",
  base05 = "#e4e4ef",
  base06 = "#f4f4ff",
  base07 = "#f5f5f5",
  base08 = "#f43841",
  base09 = "#ffdd33",
  base0A = "#73c936",
  base0B = "#95a99f",
  base0C = "#96a6c8",
  base0D = "#9e95c7",
  base0E = "#cc8c3c",
  base0F = "#c73c3f",
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
-- }

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#cc8c3c",
      italic = true,
    },
    CursorLineNr = {
      fg = "#ffdd33", -- Amarillo para el número de línea actual
    },
    Delimiter = {
      fg = "#ffffff", -- Blanco para paréntesis si no usas Treesitter
    },
  },
  treesitter = {
    ["@punctuation.bracket"] = {
      fg = "#ffffff", -- Blanco para paréntesis con Treesitter
    },
    ["@function.call"] = {
      fg = "#ffffff", -- Blanco para palabras clave como 'require'
    },
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "gruber-darker")

return M
