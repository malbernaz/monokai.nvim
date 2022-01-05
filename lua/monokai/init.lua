local palette = require("monokai.palette")

local function highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

local function load_syntax(palette)
  return {
    Normal = { fg = palette.white, bg = palette.base2 },
    NormalFloat = { bg = palette.base2 },
    Pmenu = { fg = palette.white, bg = palette.base3 },
    PmenuSel = { fg = palette.white, bg = palette.base5 },
    PmenuSelBold = { fg = palette.white, bg = palette.base5 },
    PmenuThumb = { fg = palette.purple, bg = palette.white },
    PmenuSbar = { bg = palette.base3 },
    Cursor = { style = "reverse" },
    ColorColumn = { bg = palette.base3 },
    CursorLine = { bg = palette.base3 },
    NonText = { fg = palette.base5 },
    Visual = { bg = palette.base4 },
    VisualNOS = { bg = palette.base3 },
    Search = { fg = palette.base2, bg = palette.yellow },
    IncSearch = { fg = palette.base2, bg = palette.yellow },
    CursorLineNr = { fg = palette.white },
    MatchParen = { fg = palette.white },
    Question = { fg = palette.yellow },
    ModeMsg = { fg = palette.white, style = "bold" },
    MoreMsg = { fg = palette.white, style = "bold" },
    ErrorMsg = { fg = palette.pink, style = "bold" },
    WarningMsg = { fg = palette.yellow, style = "bold" },
    VertSplit = { fg = palette.base6 },
    LineNr = { fg = palette.base5, bg = palette.base2 },
    SignColumn = { fg = palette.white, bg = palette.base2 },
    StatusLine = { fg = palette.base7, bg = palette.base3 },
    StatusLineNC = { fg = palette.base6, bg = palette.base3 },
    Tabline = {},
    TabLineFill = {},
    TabLineSel = { bg = palette.base4 },
    SpellBad = { fg = palette.pink, style = "undercurl" },
    SpellCap = { fg = palette.purple, style = "undercurl" },
    SpellRare = { fg = palette.aqua, style = "undercurl" },
    SpellLocal = { fg = palette.pink, style = "undercurl" },
    SpecialKey = { fg = palette.pink },
    Title = { fg = palette.yellow, style = "bold" },
    Directory = { fg = palette.orange },
    DiffAdd = { bg = palette.diff_add },
    DiffDelete = { bg = palette.diff_remove },
    DiffChange = { bg = palette.diff_change },
    DiffText = { bg = palette.diff_text },
    diffAdded = { fg = palette.green },
    diffRemoved = { fg = palette.pink },
    Folded = { fg = palette.base6, bg = palette.base3 },
    FoldColumn = { fg = palette.white, bg = palette.base1 },
    Constant = { fg = palette.purple },
    Number = { fg = palette.purple },
    Float = { fg = palette.purple },
    Boolean = { fg = palette.purple },
    Character = { fg = palette.yellow },
    String = { fg = palette.yellow },
    Type = { fg = palette.aqua },
    Structure = { fg = palette.aqua },
    StorageClass = { fg = palette.aqua },
    Typedef = { fg = palette.aqua },
    Identifier = { fg = palette.white },
    Function = { fg = palette.green },
    Statement = { fg = palette.pink },
    Operator = { fg = palette.pink },
    Label = { fg = palette.pink },
    Keyword = { fg = palette.pink },
    PreProc = { fg = palette.green },
    Include = { fg = palette.pink },
    Define = { fg = palette.pink },
    Macro = { fg = palette.pink },
    PreCondit = { fg = palette.pink },
    Special = { fg = palette.yellow },
    SpecialChar = { fg = palette.pink },
    Delimiter = { fg = palette.white },
    SpecialComment = { fg = palette.base6 },
    Tag = { fg = palette.red },
    Todo = { fg = palette.orange },
    Comment = { fg = palette.base6 },
    Underlined = { style = "underline" },
    Ignore = {},
    Error = { fg = palette.pink },
    Terminal = { fg = palette.white, bg = palette.base2 },
    EndOfBuffer = { fg = palette.base2 },
    Conceal = { fg = palette.base6 },
    vCursor = { style = "reverse" },
    iCursor = { style = "reverse" },
    lCursor = { style = "reverse" },
    CursorIM = { style = "reverse" },
    CursorColumn = { bg = palette.base3 },
    Whitespace = { fg = palette.base3 },
    WildMenu = { fg = palette.white, bg = palette.orange },
    QuickFixLine = { fg = palette.purple, style = "bold" },
    Debug = { fg = palette.orange },
    debugBreakpoint = { fg = palette.base2, bg = palette.pink },
    Conditional = { fg = palette.pink },
    Repeat = { fg = palette.pink },
    Exception = { fg = palette.pink },
    netrwClassify = { fg = palette.white },
    DiagnosticError = { fg = palette.pink },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.white },
    DiagnosticHint = { fg = palette.aqua },
    DiagnosticSignError = { fg = palette.pink },
    DiagnosticSignWarn = { fg = palette.yellow },
    DiagnosticSignInfo = { fg = palette.white },
    DiagnosticSignHint = { fg = palette.aqua },
    DiagnosticVirtualTextError = { fg = palette.pink },
    DiagnosticVirtualTextWarn = { fg = palette.yellow },
    DiagnosticVirtualTextInfo = { fg = palette.white },
    DiagnosticVirtualTextHint = { fg = palette.aqua },
    DiagnosticUnderlineError = { style = "undercurl", sp = palette.pink },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = palette.white },
    DiagnosticUnderlineHint = { style = "undercurl", sp = palette.aqua },
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
