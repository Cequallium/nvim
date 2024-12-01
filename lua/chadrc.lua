-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(
-- local colors = require("nvui.base46").get_theme_tb "base_30"
local options = {

  base46 = {
    theme = "tokyodark", -- default theme
    hl_add = {
    },
    hl_override = {
      Comment = { italic = true },
      ["@comment"] = { italic = true }
    },
    integrations = {
    },
    changed_themes = {},
    -- transparency = true,
  },

  ui = {
    cmp = {
      style = "default", -- default/flat_light/flat_dark/atom/atom_colored
      format_colors = {
        tailwind = true, -- will work for css lsp too
      },
    },

    telescope = { style = "bordered" }, -- borderless / bordered

    statusline = {
      theme = "minimal", -- default/vscode/vscode_colored/minimal
      -- default/round/block/arrow separators work only for default statusline theme
      -- round and block will work for minimal theme only
      separator_style = "round",
    },

    -- lazyload it when there are 1+ buffers
    tabufline = {
      enabled = false,
    },
  },

  colorify = {
    enabled = true,
  },
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
