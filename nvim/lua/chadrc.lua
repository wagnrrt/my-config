---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "obscure",

  hl_override = {
    Comment = { italic = true },
    NvDashAscii = {
      fg = "#478061",
    },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "██▒   █▓ ▒█████   ██▓▓█████▄  ",
    "▓██░   █▒▒██▒  ██▒▓██▒▒██▀ ██▌",
    " ▓██  █▒░▒██░  ██▒▒██▒░██   █▌",
    "  ▒██ █░░▒██   ██░░██░░▓█▄  █▌",
    "   ▒▀█░  ░ ████▓▒░░██░░▒████▓ ",
    "   ░ ▐░  ░ ▒░▒░▒░ ░▓   ▒▒▓  ▒ ",
    "   ░ ░░    ░ ▒ ▒░  ▒ ░ ░ ▒  ▒ ",
    "     ░░  ░ ░ ░ ▒   ▒ ░ ░ ░  ░ ",
    "      ░      ░ ░   ░     ░    ",
    "     ░                 ░      ",
  },
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "vscode",
  },
  lsp_semantic_tokens = false,
}

return M
