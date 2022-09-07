local palette = require("monokai.palette")

local function highlight(group, color)
  color = color or {}
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

local function load_syntax(p)
  return {
    Normal = { fg = p.white, bg = p.base2 },
    NormalFloat = { bg = p.base2, fg = p.base7 },
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
    DiffAdd = { bg = p.diff_add },
    DiffDelete = { bg = p.diff_remove },
    DiffChange = { bg = p.diff_change },
    DiffText = { bg = p.diff_text },
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

local function load_plugin_syntax(p)
  local hlgroups = {
    TSString = { fg = p.yellow },
    TSInclude = { fg = p.pink },
    TSVariable = { fg = p.white },
    TSVariableBuiltin = { fg = p.white },
    TSAnnotation = { fg = p.green },
    TSComment = { fg = p.base6 },
    TSConstant = { fg = p.purple },
    TSConstBuiltin = { fg = p.purple },
    TSConstMacro = { fg = p.purple },
    TSConstructor = { fg = p.aqua },
    TSConditional = { fg = p.pink },
    TSCharacter = { fg = p.yellow },
    TSFunction = { fg = p.green },
    TSFuncBuiltin = { fg = p.aqua },
    TSFuncMacro = { fg = p.green },
    TSKeyword = { fg = p.pink },
    TSKeywordFunction = { fg = p.pink },
    TSKeywordOperator = { fg = p.pink },
    TSKeywordReturn = { fg = p.pink },
    TSMethod = { fg = p.green },
    TSNamespace = { fg = p.aqua },
    TSNumber = { fg = p.purple },
    TSOperator = { fg = p.pink },
    TSParameter = { fg = p.orange },
    TSParameterReference = { fg = p.white },
    TSProperty = { fg = p.white },
    TSPunctDelimiter = { fg = p.base7 },
    TSPunctBracket = { fg = p.base7 },
    TSPunctSpecial = { fg = p.base7 },
    TSRepeat = { fg = p.pink },
    TSStringRegex = { fg = p.purple },
    TSStringEscape = { fg = p.purple },
    TSTag = { fg = p.pink },
    TSTagDelimiter = { fg = p.base7 },
    TSTagAttribute = { fg = p.green },
    TSLabel = { fg = p.pink },
    TSType = { fg = p.aqua },
    TSTypeBuiltin = { fg = p.purple },
    TSError = { fg = p.red },
    TSException = { fg = p.pink },
    TSField = { fg = p.white },
    TSFloat = { fg = p.purple },
    dbui_tables = { fg = p.white },
    CursorWord0 = { bg = p.white, fg = p.base1 },
    CursorWord1 = { bg = p.white, fg = p.base1 },
    NvimTreeFolderName = { fg = p.white },
    NvimTreeRootFolder = { fg = p.pink },
    NvimTreeSpecialFile = { fg = p.white, style = "NONE" },
    TelescopeTitle = { fg = p.yellow },
    TelescopeBorder = { fg = p.base7 },
    TelescopePromptBorder = { fg = p.base7 },
    GitSignsAdd = { fg = p.green, bg = p.base2 },
    GitSignsDelete = { fg = p.pink, bg = p.base2 },
    GitSignsChange = { fg = p.orange, bg = p.base2 },
    IndentBlanklineChar = { fg = p.base4 },
    IndentBlanklineContextChar = { fg = p.base4 },
    CmpItemMenu = { fg = p.green },
    CmpItemAbbrMatch = { fg = p.base7 },
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
    hlgroups["CmpItemKind" .. kind] = { fg = p.orange }
  end

  return hlgroups
end

local M = {}

M.palette = palette

M.setup = function(config)
  config = vim.tbl_deep_extend("keep", { custom_hlgroups = {} }, config or {})

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
