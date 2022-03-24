local palette = require("monokai.palette")

local function highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

local function load_syntax(p)
  return {
    Normal = { fg = p.white, bg = p.base2 },
    NormalFloat = { bg = p.base2 },
    Pmenu = { fg = p.white, bg = p.base3 },
    PmenuSel = { fg = p.white, bg = p.base5 },
    PmenuSelBold = { fg = p.white, bg = p.base5 },
    PmenuThumb = { fg = p.purple, bg = p.white },
    PmenuSbar = { bg = p.base3 },
    Cursor = { style = "reverse" },
    ColorColumn = { bg = p.base3 },
    CursorLine = { bg = p.base3 },
    NonText = { fg = p.base5 },
    Visual = { bg = p.base4 },
    VisualNOS = { bg = p.base3 },
    Search = { fg = p.base2, bg = p.yellow },
    IncSearch = { fg = p.base2, bg = p.yellow },
    CursorLineNr = { fg = p.white },
    MatchParen = { fg = p.white },
    Question = { fg = p.yellow },
    ModeMsg = { fg = p.white, style = "bold" },
    MoreMsg = { fg = p.white, style = "bold" },
    ErrorMsg = { fg = p.pink, style = "bold" },
    WarningMsg = { fg = p.yellow, style = "bold" },
    VertSplit = { fg = p.base6 },
    LineNr = { fg = p.base5, bg = p.base2 },
    SignColumn = { fg = p.white, bg = p.base2 },
    StatusLine = { fg = p.base7, bg = p.base3 },
    StatusLineNC = { fg = p.base6, bg = p.base3 },
    Tabline = {},
    TabLineFill = {},
    TabLineSel = { bg = p.base4 },
    SpellBad = { fg = p.pink, style = "undercurl" },
    SpellCap = { fg = p.purple, style = "undercurl" },
    SpellRare = { fg = p.aqua, style = "undercurl" },
    SpellLocal = { fg = p.pink, style = "undercurl" },
    SpecialKey = { fg = p.pink },
    Title = { fg = p.yellow, style = "bold" },
    Directory = { fg = p.orange },
    DiffAdd = { bg = p.green },
    DiffDelete = { bg = p.pink },
    DiffChange = { bg = p.orange },
    DiffText = { bg = p.orange },
    diffAdded = { fg = p.green },
    diffRemoved = { fg = p.pink },
    Folded = { fg = p.base6, bg = p.base3 },
    FoldColumn = { fg = p.white, bg = p.base1 },
    Constant = { fg = p.purple },
    Number = { fg = p.purple },
    Float = { fg = p.purple },
    Boolean = { fg = p.purple },
    Character = { fg = p.yellow },
    String = { fg = p.yellow },
    Type = { fg = p.aqua },
    Structure = { fg = p.aqua },
    StorageClass = { fg = p.aqua },
    Typedef = { fg = p.aqua },
    Identifier = { fg = p.white },
    Function = { fg = p.green },
    Statement = { fg = p.pink },
    Operator = { fg = p.pink },
    Label = { fg = p.pink },
    Keyword = { fg = p.pink },
    PreProc = { fg = p.green },
    Include = { fg = p.pink },
    Define = { fg = p.pink },
    Macro = { fg = p.pink },
    PreCondit = { fg = p.pink },
    Special = { fg = p.yellow },
    SpecialChar = { fg = p.pink },
    Delimiter = { fg = p.white },
    SpecialComment = { fg = p.base6 },
    Tag = { fg = p.red },
    Todo = { fg = p.orange },
    Comment = { fg = p.base6 },
    Underlined = { style = "underline" },
    Ignore = {},
    Error = { fg = p.pink },
    Terminal = { fg = p.white, bg = p.base2 },
    EndOfBuffer = { fg = p.base2 },
    Conceal = { fg = p.base6 },
    vCursor = { style = "reverse" },
    iCursor = { style = "reverse" },
    lCursor = { style = "reverse" },
    CursorIM = { style = "reverse" },
    CursorColumn = { bg = p.base3 },
    Whitespace = { fg = p.base3 },
    WildMenu = { fg = p.white, bg = p.orange },
    QuickFixLine = { fg = p.purple, style = "bold" },
    Debug = { fg = p.orange },
    debugBreakpoint = { fg = p.base2, bg = p.pink },
    Conditional = { fg = p.pink },
    Repeat = { fg = p.pink },
    Exception = { fg = p.pink },
    netrwClassify = { fg = p.white },
    DiagnosticError = { fg = p.pink },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.white },
    DiagnosticHint = { fg = p.aqua },
    DiagnosticSignError = { fg = p.pink },
    DiagnosticSignWarn = { fg = p.yellow },
    DiagnosticSignInfo = { fg = p.white },
    DiagnosticSignHint = { fg = p.aqua },
    DiagnosticVirtualTextError = { fg = p.pink },
    DiagnosticVirtualTextWarn = { fg = p.yellow },
    DiagnosticVirtualTextInfo = { fg = p.white },
    DiagnosticVirtualTextHint = { fg = p.aqua },
    DiagnosticUnderlineError = { style = "undercurl", sp = p.pink },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = p.yellow },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = p.white },
    DiagnosticUnderlineHint = { style = "undercurl", sp = p.aqua },
  }
end

local function load_plugin_syntax(palette)
  local hlgroups = {
    TSString = { fg = palette.yellow },
    TSInclude = { fg = palette.pink },
    TSVariable = { fg = palette.white },
    TSVariableBuiltin = { fg = palette.white },
    TSAnnotation = { fg = palette.green },
    TSComment = { fg = palette.base6 },
    TSConstant = { fg = palette.purple },
    TSConstBuiltin = { fg = palette.purple },
    TSConstMacro = { fg = palette.purple },
    TSConstructor = { fg = palette.aqua },
    TSConditional = { fg = palette.pink },
    TSCharacter = { fg = palette.yellow },
    TSFunction = { fg = palette.green },
    TSFuncBuiltin = { fg = palette.aqua },
    TSFuncMacro = { fg = palette.green },
    TSKeyword = { fg = palette.pink },
    TSKeywordFunction = { fg = palette.pink },
    TSKeywordOperator = { fg = palette.pink },
    TSKeywordReturn = { fg = palette.pink },
    TSMethod = { fg = palette.green },
    TSNamespace = { fg = palette.aqua },
    TSNumber = { fg = palette.purple },
    TSOperator = { fg = palette.pink },
    TSParameter = { fg = palette.orange },
    TSParameterReference = { fg = palette.white },
    TSProperty = { fg = palette.white },
    TSPunctDelimiter = { fg = palette.base7 },
    TSPunctBracket = { fg = palette.base7 },
    TSPunctSpecial = { fg = palette.base7 },
    TSRepeat = { fg = palette.pink },
    TSStringRegex = { fg = palette.purple },
    TSStringEscape = { fg = palette.purple },
    TSTag = { fg = palette.pink },
    TSTagDelimiter = { fg = palette.base7 },
    TSTagAttribute = { fg = palette.green },
    TSLabel = { fg = palette.pink },
    TSType = { fg = palette.aqua },
    TSTypeBuiltin = { fg = palette.purple },
    TSError = { fg = palette.red },
    TSException = { fg = palette.pink },
    TSField = { fg = palette.white },
    TSFloat = { fg = palette.purple },
    dbui_tables = { fg = palette.white },
    CursorWord0 = { bg = palette.white, fg = palette.base1 },
    CursorWord1 = { bg = palette.white, fg = palette.base1 },
    NvimTreeFolderName = { fg = palette.white },
    NvimTreeRootFolder = { fg = palette.pink },
    NvimTreeSpecialFile = { fg = palette.white, style = "NONE" },
    TelescopeTitle = { fg = palette.yellow },
    TelescopeBorder = { fg = palette.base7 },
    TelescopePromptBorder = { fg = palette.base7 },
    GitSignsAdd = { fg = palette.green, bg = palette.base2 },
    GitSignsDelete = { fg = palette.pink, bg = palette.base2 },
    GitSignsChange = { fg = palette.orange, bg = palette.base2 },
    IndentBlanklineChar = { fg = palette.base4 },
    IndentBlanklineContextChar = { fg = palette.base4 },
    CmpItemMenu = { fg = palette.green },
    CmpItemAbbrMatch = { fg = palette.base7 },
  }

  local kinds = {
    "Text",
    "Method",
    "Function",
    "Constructor",
    "Field",
    "Variable",
    "Class",
    "Interface",
    "Module",
    "Property",
    "Unit",
    "Value",
    "Enum",
    "Keyword",
    "Snippet",
    "Color",
    "File",
    "Reference",
    "Folder",
    "EnumMember",
    "Constant",
    "Struct",
    "Event",
    "Operator",
    "TypeParameter",
  }

  for _, kind in ipairs(kinds) do
    hlgroups["CmpItemKind" .. kind] = { fg = palette.orange }
  end

  return hlgroups
end

local M = {}

M.palette = palette

M.setup = function(config)
  config = vim.tbl_deep_extend("keep", { custom_hlgroups = {} }, config)

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "monokai"

  local syntax = vim.tbl_deep_extend("keep", config.custom_hlgroups, load_syntax(palette))

  for group, colors in pairs(syntax) do
    highlight(group, colors)
  end

  local async_load_plugin = nil
  async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
    local plugin_syntax = vim.tbl_deep_extend(
      "keep",
      config.custom_hlgroups,
      load_plugin_syntax(palette)
    )

    for group, colors in pairs(plugin_syntax) do
      highlight(group, colors)
    end

    async_load_plugin:close()
  end))

  async_load_plugin:send()
end

return M
