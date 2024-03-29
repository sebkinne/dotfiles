-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir, foxtrot, sebkinne
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  bg_dark  = '#16161e',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

-- Mode Labels
local mode_color = {
  n = colors.red,
  i = colors.green,
  v = colors.blue,
  [''] = colors.blue,
  V = colors.blue,
  c = colors.magenta,
  no = colors.red,
  s = colors.orange,
  S = colors.orange,
  [''] = colors.orange,
  ic = colors.yellow,
  R = colors.violet,
  Rv = colors.violet,
  cv = colors.red,
  ce = colors.red,
  r = colors.cyan,
  rm = colors.cyan,
  ['r?'] = colors.cyan,
  ['!'] = colors.red,
  t = colors.red,
}

local mode_name = {
  n = 'NORMAL',
  i = 'INSERT',
  v = 'VISUAL',
  [''] = 'VISUAL BLOCK',
  V = 'VISUAL LINE',
  c = 'COMMAND',
  no = 'OPERATOR PENDING',
  s = 'SELECT CHAR',
  S = 'SELECT LINE',
  [''] = 'SELECT BLOCK',
  ic = 'INSERT COMPLETION',
  R = 'REPLACE',
  Rv = 'VIRTUAL REPLACE',
  cv = 'VIM EX',
  ce = 'NORMAL EX',
  r = 'PROMPT',
  rm = '-- MORE --',
  ['r?'] = 'CONFIRM',
  ['!'] = 'EXEC',
  t = 'TERMINAL'
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand '%:t') ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand '%:p:h'
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = 'tokyonight',
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

-- Add components to left section
ins_left {
  function()
    return '▊'
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 0 }, -- We don't need space before this
}

ins_left {
  padding = { left = 1, right = 1 },
  function()
      vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. ' guibg=' .. colors.bg_dark)
      return mode_name[vim.fn.mode()]
  end,
  color = 'LualineMode',
}

ins_left {
  'filename',
  color = { fg = colors.green, gui = 'bold' },
}

ins_left {
  'filesize',
}

ins_left {
    'searchcount',
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

-- Add components to right sections
ins_right {
  function()
    return '0x%02B'
  end,
  color = { fg = colors.fg, gui = 'bold' },
  padding = { left = 0, right = 0 }
}

ins_right { 'location', color = { fg = colors.fg, gui = 'bold' } }

ins_right { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_right {
  'diagnostics',
  sources = { 'nvim_lsp' },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
    color_hint = { fg = colors.green },
  },
  always_visible = true,
  update_in_insert = true
}

ins_right {
    'filetype',
}

ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper,
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  symbols = { added = ' ', modified = '柳', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
}

-- Initialize lualine
lualine.setup(config)
