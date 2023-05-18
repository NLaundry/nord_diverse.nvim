local nord = require("nord.colors")

local theme = {}

local italic = vim.g.nord_italic == false and nord.none or "italic"
local italic_undercurl = vim.g.nord_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.nord_bold == false and nord.none or "bold"
local reverse_bold = vim.g.nord_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.nord_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.nord_bold == false then
    bold_italic = vim.g.nord_italic == false and nord.none or "italic"
elseif vim.g.nord_italic == false then
    bold_italic = "bold"
else
    bold_italic = "bold,italic"
end


-- New style guideline, we're going to replace nord9 with these colours when possible

-- nord11_gui = named_colors.red, -- nord11 in palette
-- nord12_gui = named_colors.orange, -- nord12 in palette
-- nord13_gui = named_colors.yellow, -- nord13 in palette
-- nord14_gui = named_colors.green, -- nord14 in palette
-- nord15_gui = named_colors.purple, -- nord15 in palette

theme.loadSyntax = function()
    -- Syntax highlight groups
    return {
        Type = { fg = nord.nord10_gui },
        StorageClass = { fg = nord.nord12_gui },
        Structure = { fg = nord.nord7_gui },
        Typedef = { fg = nord.nord14_gui },

        Constant = { fg = nord.nord12_gui },
        Character = { fg = nord.nord5_gui },
        Number = { fg = nord.nord12_gui },
        Boolean = { fg = nord.nord12_gui },
        Float = { fg = nord.nord13_gui },

        Statement = { fg = nord.nord13_gui },
        Label = { fg = nord.nord9_gui },
        Operator = { fg = nord.nord6_gui },
        Exception = { fg = nord.nord15_gui },

        PreProc = { fg = nord.nord4_gui },
        Include = { fg = nord.nord10_gui },
        Define = { fg = nord.nord10_gui },
        Macro = { fg = nord.nord10_gui },
        PreCondit = { fg = nord.nord10_gui },

        Special = { fg = nord.nord15_gui },
        SpecialChar = { fg = nord.nord13_gui },
        Tag = { fg = nord.nord15_gui },
        Delimiter = { fg = nord.nord3_gui },

        Debug = { fg = nord.nord11_gui },
        Error = { fg = nord.nord11_gui },

        Ignore = { fg = nord.nord3_gui },
        Conceal = { fg = nord.none, bg = nord.nord0_gui },

        Underlined = { fg = nord.nord8_gui, bg = nord.none },
        htmlLink = { fg = nord.nord7_gui },

        markdownH1Delimiter = { fg = nord.nord10_gui },
        markdownH2Delimiter = { fg = nord.nord10_gui },
        markdownH3Delimiter = { fg = nord.nord10_gui },

        htmlH1 = { fg = nord.nord10_gui },
        htmlH2 = { fg = nord.nord9_gui },
        htmlH3 = { fg = nord.nord8_gui },
        htmlH4 = { fg = nord.nord4_gui },
        htmlH5 = { fg = nord.nord4_gui },

        markdownH1 = { fg = nord.nord10_gui },
        markdownH2 = { fg = nord.nord9_gui },
        markdownH3 = { fg = nord.nord8_gui },

        Comment = { fg = nord.nord3_gui_bright, style = "italic" },
        Conditional = { fg = nord.nord13_gui },
        Function = { fg = nord.nord8_gui },
        Identifier = { fg = nord.nord9_gui },
        Keyword = { fg = nord.nord13_gui },
        Repeat = { fg = nord.nord13_gui },
        String = { fg = nord.nord14_gui },
        Todo = { fg = nord.nord13_gui, bg = nord.none, style = "italic" },
    }
end

theme.loadEditor = function()
    -- Editor highlight groups

    local editor = {
        NormalFloat = { fg = nord.nord4_gui, bg = nord.float }, -- normal text and background color
        FloatBorder = { fg = nord.nord4_gui, bg = nord.float }, -- normal text and background color
        ColorColumn = { fg = nord.none, bg = nord.nord1_gui }, -- used for the columns set with 'colorcolumn'
        Conceal = { fg = nord.nord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" }, -- the character under the cursor
        CursorIM = { fg = nord.nord5_gui, bg = nord.none, style = "reverse" }, -- like Cursor, but used when in IME mode
        Directory = { fg = nord.nord7_gui, bg = nord.none }, -- directory names (and other special names in listings)
        EndOfBuffer = { fg = nord.nord1_gui },
        ErrorMsg = { fg = nord.none },
        Folded = { fg = nord.nord3_gui_bright, bg = nord.none, style = italic },
        FoldColumn = { fg = nord.nord7_gui },
        IncSearch = { fg = nord.nord6_gui, bg = nord.nord10_gui },
        LineNr = { fg = nord.nord3_gui_bright },
        CursorLineNr = { fg = nord.nord4_gui },
        MatchParen = { fg = nord.nord15_gui, bg = nord.none, style = bold },
        ModeMsg = { fg = nord.nord4_gui },
        MoreMsg = { fg = nord.nord4_gui },
        NonText = { fg = nord.nord1_gui },
        Pmenu = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        PmenuSel = { fg = nord.nord4_gui, bg = nord.nord10_gui },
        PmenuSbar = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        PmenuThumb = { fg = nord.nord4_gui, bg = nord.nord4_gui },
        Question = { fg = nord.nord14_gui },
        QuickFixLine = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
        qfLineNr = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
        Search = { fg = nord.nord6_gui, bg = nord.nord10_gui },
        Substitute = { fg = nord.nord0_gui, bg = nord.nord12_gui },
        SpecialKey = { fg = nord.nord9_gui },
        SpellBad = { fg = nord.nord11_gui, bg = nord.none, style = italic_undercurl },
        SpellCap = { fg = nord.nord7_gui, bg = nord.none, style = italic_undercurl },
        SpellLocal = { fg = nord.nord8_gui, bg = nord.none, style = italic_undercurl },
        SpellRare = { fg = nord.nord9_gui, bg = nord.none, style = italic_undercurl },
        StatusLine = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        StatusLineNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        StatusLineTerm = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        StatusLineTermNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        TabLineFill = { fg = nord.nord4_gui, bg = nord.none },
        TablineSel = { fg = nord.nord1_gui, bg = nord.nord9_gui },
        Tabline = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        Title = { fg = nord.nord14_gui, bg = nord.none, style = bold },
        Visual = { fg = nord.none, bg = nord.nord2_gui },
        VisualNOS = { fg = nord.none, bg = nord.nord2_gui },
        WarningMsg = { fg = nord.nord15_gui },
        WildMenu = { fg = nord.nord12_gui, bg = nord.none, style = bold },
        CursorColumn = { fg = nord.none, bg = nord.cursorlinefg },
        CursorLine = { fg = nord.none, bg = nord.cursorlinefg },
        ToolbarLine = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        ToolbarButton = { fg = nord.nord4_gui, bg = nord.none, style = bold },
        NormalMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
        InsertMode = { fg = nord.nord14_gui, bg = nord.none, style = "reverse" },
        ReplacelMode = { fg = nord.nord11_gui, bg = nord.none, style = "reverse" },
        VisualMode = { fg = nord.nord9_gui, bg = nord.none, style = "reverse" },
        CommandMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
        Warnings = { fg = nord.nord15_gui },

        healthError = { fg = nord.nord11_gui },
        healthSuccess = { fg = nord.nord14_gui },
        healthWarning = { fg = nord.nord15_gui },

        -- dashboard
        DashboardShortCut = { fg = nord.nord7_gui },
        DashboardHeader = { fg = nord.nord9_gui },
        DashboardCenter = { fg = nord.nord8_gui },
        DashboardFooter = { fg = nord.nord14_gui, style = italic },

        -- Barbar
        BufferTabpageFill = { bg = nord.nord0_gui },

        BufferCurrent = { bg = nord.nord1_gui },
        BufferCurrentMod = { bg = nord.nord1_gui, fg = nord.nord15_gui },
        BufferCurrentIcon = { bg = nord.nord1_gui },
        BufferCurrentSign = { bg = nord.nord1_gui },
        BufferCurrentIndex = { bg = nord.nord1_gui },
        BufferCurrentTarget = { bg = nord.nord1_gui, fg = nord.nord11_gui },

        BufferInactive = { bg = nord.nord0_gui, fg = nord.nord3_gui },
        BufferInactiveMod = { bg = nord.nord0_gui, fg = nord.nord15_gui },
        BufferInactiveIcon = { bg = nord.nord0_gui, fg = nord.nord3_gui },
        BufferInactiveSign = { bg = nord.nord0_gui, fg = nord.nord3_gui },
        BufferInactiveIndex = { bg = nord.nord0_gui, fg = nord.nord3_gui },
        BufferInactiveTarget = { bg = nord.nord0_gui, fg = nord.nord11_gui },

        BufferVisible = { bg = nord.nord2_gui },
        BufferVisibleMod = { bg = nord.nord2_gui, fg = nord.nord15_gui },
        BufferVisibleIcon = { bg = nord.nord2_gui },
        BufferVisibleSign = { bg = nord.nord2_gui },
        BufferVisibleIndex = { bg = nord.nord2_gui },
        BufferVisibleTarget = { bg = nord.nord2_gui, fg = nord.nord11_gui },

        -- nvim-notify
        NotifyDEBUGBorder = { fg = nord.nord3_gui },
        NotifyDEBUGIcon = { fg = nord.nord3_gui },
        NotifyDEBUGTitle = { fg = nord.nord3_gui },
        NotifyERRORBorder = { fg = nord.nord11_gui },
        NotifyERRORIcon = { fg = nord.nord11_gui },
        NotifyERRORTitle = { fg = nord.nord11_gui },
        NotifyINFOBorder = { fg = nord.nord14_gui },
        NotifyINFOIcon = { fg = nord.nord14_gui },
        NotifyINFOTitle = { fg = nord.nord14_gui },
        NotifyTRACEBorder = { fg = nord.nord15_gui },
        NotifyTRACEIcon = { fg = nord.nord15_gui },
        NotifyTRACETitle = { fg = nord.nord15_gui },
        NotifyWARNBorder = { fg = nord.nord13_gui },
        NotifyWARNIcon = { fg = nord.nord13_gui },
        NotifyWARNTitle = { fg = nord.nord13_gui },

        -- leap.nvim
        LeapMatch = { style = "underline,nocombine", fg = nord.nord13_gui },
        LeapLabelPrimary = { style = "nocombine", fg = nord.nord0_gui, bg = nord.nord13_gui },
        LeapLabelSecondary = { style = "nocombine", fg = nord.nord0_gui, bg = nord.nord15_gui },
    }

    -- Options:

    --Set transparent background
    if vim.g.nord_disable_background then
        editor.Normal = { fg = nord.nord4_gui, bg = nord.none } -- normal text and background color
        editor.SignColumn = { fg = nord.nord4_gui, bg = nord.none }
    else
        editor.Normal = { fg = nord.nord4_gui, bg = nord.nord0_gui } -- normal text and background color
        editor.SignColumn = { fg = nord.nord4_gui, bg = nord.nord0_gui }
    end

    -- Remove window split borders
    if vim.g.nord_borders then
        editor.VertSplit = { fg = nord.nord2_gui }
    else
        editor.VertSplit = { fg = nord.nord0_gui }
    end

    if vim.g.nord_uniform_diff_background then
        editor.DiffAdd = { fg = nord.nord14_gui, bg = nord.nord1_gui } -- diff mode: Added line
        editor.DiffChange = { fg = nord.nord13_gui, bg = nord.nord1_gui } -- diff mode: Changed line
        editor.DiffDelete = { fg = nord.nord11_gui, bg = nord.nord1_gui } -- diff mode: Deleted line
        editor.DiffText = { fg = nord.nord15_gui, bg = nord.nord1_gui } -- diff mode: Changed text within a changed line
    else
        editor.DiffAdd = { fg = nord.nord14_gui, bg = nord.none, style = "reverse" } -- diff mode: Added line
        editor.DiffChange = { fg = nord.nord13_gui, bg = nord.none, style = "reverse" } -- diff mode: Changed line
        editor.DiffDelete = { fg = nord.nord11_gui, bg = nord.none, style = "reverse" } -- diff mode: Deleted line
        editor.DiffText = { fg = nord.nord15_gui, bg = nord.none, style = "reverse" } -- diff mode: Changed text within a changed line
    end

    return editor
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = nord.nord1_gui
    vim.g.terminal_color_1 = nord.nord11_gui
    vim.g.terminal_color_2 = nord.nord14_gui
    vim.g.terminal_color_3 = nord.nord13_gui
    vim.g.terminal_color_4 = nord.nord9_gui
    vim.g.terminal_color_5 = nord.nord15_gui
    vim.g.terminal_color_6 = nord.nord8_gui
    vim.g.terminal_color_7 = nord.nord5_gui
    vim.g.terminal_color_8 = nord.nord3_gui
    vim.g.terminal_color_9 = nord.nord11_gui
    vim.g.terminal_color_10 = nord.nord14_gui
    vim.g.terminal_color_11 = nord.nord13_gui
    vim.g.terminal_color_12 = nord.nord9_gui
    vim.g.terminal_color_13 = nord.nord15_gui
    vim.g.terminal_color_14 = nord.nord7_gui
    vim.g.terminal_color_15 = nord.nord6_gui
end

theme.loadTreeSitter = function()
    -- TreeSitter highlight groups

    local treesitter = {
        TSConstructor = { fg = nord.nord10_gui, style = "bold" },
        TSConstant = { fg = nord.nord12_gui },
        TSFloat = { fg = nord.nord13_gui },
        TSNumber = { fg = nord.nord13_gui },
        TSAttribute = { fg = nord.nord12_gui },
        TSError = { fg = nord.nord11_gui, style= "bold" },
        TSException = { fg = nord.nord15_gui },
        TSFuncMacro = { fg = nord.nord4_gui },
        TSInclude = { fg = nord.nord10_gui },
        TSLabel = { fg = nord.nord13_gui },
        TSOperator = { fg = nord.nord6_gui },
        TSParameter = { fg = nord.nord13_gui },
        TSParameterReference = { fg = nord.nord13_gui },
        TSPunctDelimiter = { fg = nord.nord3_gui },
        TSPunctBracket = { fg = nord.nord3_gui },
        TSPunctSpecial = { fg = nord.nord3_gui },
        TSSymbol = { fg = nord.nord15_gui, style = "italic" },
        TSType = { fg = nord.nord10_gui },
        TSTypeBuiltin = { fg = nord.nord10_gui },
        TSText = { fg = nord.nord14_gui },
        TSTextReference = { fg = nord.nord14_gui },
        TSEmphasis = { fg = nord.nord9_gui },
        TSUnderline = { fg = nord.nord8_gui, bg = nord.none },
        TSLiteral = { fg = nord.nord14_gui },
        TSURI = { fg = nord.nord7_gui },
        TSAnnotation = { fg = nord.nord12_gui },

        ["@constructor"] = { fg = nord.nord10_gui, style= "bold"},
        ["@constant"] = { fg = nord.nord12_gui },
        ["@float"] = { fg = nord.nord13_gui },
        ["@number"] = { fg = nord.nord13_gui },
        ["@attribute"] = { fg = nord.nord12_gui },
        ["@error"] = { fg = nord.nord11_gui },
        ["@exception"] = { fg = nord.nord15_gui },
        ["@funtion.macro"] = { fg = nord.nord4_gui },
        ["@include"] = { fg = nord.nord10_gui },
        ["@label"] = { fg = nord.nord13_gui },
        ["@operator"] = { fg = nord.nord6_gui },
        ["@parameter"] = { fg = nord.nord13_gui },
        ["@punctuation.delimiter"] = { fg = nord.nord3_gui },
        ["@punctuation.bracket"] = { fg = nord.nord3_gui },
        ["@punctuation.special"] = { fg = nord.nord3_gui },
        ["@symbol"] = { fg = nord.nord15_gui , style="italic"},
        ["@type"] = { fg = nord.nord10_gui },
        ["@type.builtin"] = { fg = nord.nord10_gui },
        ["@tag"] = { fg = nord.nord15_gui },
        ["@tag.delimiter"] = { fg = nord.nord3_gui },
        ["@text"] = { fg = nord.nord14_gui },
        ["@text.reference"] = { fg = nord.nord14_gui },
        ["@text.emphasis"] = { fg = nord.nord9_gui },
        ["@text.underline"] = { fg = nord.nord8_gui, bg = nord.none },
        ["@text.literal"] = { fg = nord.nord14_gui },
        ["@text.uri"] = { fg = nord.nord7_gui },
        ["@text.strike"] = { fg = nord.nord14_gui },

        ["@function.call"] = { fg = nord.nord8_gui },
        ["@method.call"] = { fg = nord.nord8_gui },
        ["@type.qualifier"] = { fg = nord.nord13_gui },
        ["@text.math"] = { fg = nord.nord13_gui },
        ["@text.environment"] = { fg = nord.nord4_gui },
        ["@text.environment.name"] = { fg = nord.nord14_gui },
        ["@text.note"] = { fg = nord.nord12_gui, bg = nord.none },
        ["@text.warning"] = { fg = nord.nord11_gui, bg = nord.none },
        ["@text.danger"] = { fg = nord.nord11_gui, bg = nord.none },
        ["@tag.attribute"] = { fg = nord.nord15_gui },
        ["@string.special"] = { fg = nord.nord13_gui },

        TSVariableBuiltin = { fg = nord.nord4_gui },
        TSBoolean = { fg = nord.nord9_gui },
        TSConstBuiltin = { fg = nord.nord12_gui },
        TSConstMacro = { fg = nord.nord12_gui },
        TSVariable = { fg = nord.nord4_gui },
        -- Bold for Title to emphasize its importance
        TSTitle = { fg = nord.nord10_gui, bg = nord.none, style = "bold" },

        TSTag = { fg = nord.nord15_gui },
        TSTagDelimiter = { fg = nord.nord3_gui },
    }

        treesitter["@variable"] = { fg = nord.nord4_gui }
        treesitter["@variable.builtin"] = { fg = nord.nord4_gui }
        treesitter["@variable.global"] = { fg = nord.nord4_gui }
        treesitter["@boolean"] = { fg = nord.nord9_gui }
        treesitter["@constant.builtin"] = { fg = nord.nord11_gui }
        treesitter["@constant.macro"] = { fg = nord.nord12_gui }
        treesitter["@text.title"] = { fg = nord.nord10_gui, bg = nord.none, style = "bold" }
        treesitter["@text.strong"] = { fg = nord.nord10_gui, bg = nord.none }
        treesitter.TSComment = { fg = nord.nord3_gui_bright, style="italic" }
        treesitter.TSConditional = { fg = nord.nord9_gui }
        treesitter.TSFunction = { fg = nord.nord10_gui }
        treesitter.TSMethod = { fg = nord.nord15_gui }
        -- treesitter.TSFuncBuiltin = { fg = nord.nord13_gui }
        treesitter.TSNamespace = { fg = nord.nord4_gui }
        treesitter.TSField = { fg = nord.nord4_gui }
        treesitter.TSProperty = { fg = nord.nord10_gui }

       treesitter.TSKeywordFunction = { fg = nord.nord15 } -- 'def' keyword in Pytho
       treesitter.TSFuncBuiltin = { fg = nord.nord15_gui } -- Function names
       treesitter.TSParameter = { fg = nord.nord11_gui } -- Function parameters
        treesitter.TSKeyword = { fg = nord.nord9_gui, style = "bold" }
        treesitter.TSKeywordReturn = { fg = nord.nord15_gui }
        treesitter.TSKeywordOperator = { fg = nord.nord13_gui }
        treesitter.TSRepeat = { fg = nord.nord9_gui }
        treesitter.TSString = { fg = nord.nord14_gui }
        treesitter.TSStringRegex = { fg = nord.nord12_gui }
        treesitter.TSStringEscape = { fg = nord.nord11_gui }
        treesitter.TSCharacter = { fg = nord.nord14_gui }
        treesitter["@comment"] = { fg = nord.nord3_gui_bright, style="italic" }
        treesitter["@conditional"] = { fg = nord.nord9_gui }
        treesitter["@function"] = { fg = nord.nord15_gui }
        treesitter["@method"] = { fg = nord.nord15_gui }
        treesitter["@function.builtin"] = { fg = nord.nord15_gui }
        treesitter["@namespace"] = { fg = nord.nord4_gui }
        treesitter["@field"] = { fg = nord.nord4_gui }
        treesitter["@property"] = { fg = nord.nord10_gui }
        treesitter["@keyword"] = { fg = nord.nord9_gui, style = "bold" }
        treesitter["@keyword.function"] = { fg = nord.nord12_gui }
        treesitter["@keyword.return"] = { fg = nord.nord15_gui }
        treesitter["@keyword.operator"] = { fg = nord.nord13_gui }
        treesitter["@repeat"] = { fg = nord.nord9_gui }
        treesitter["@string"] = { fg = nord.nord14_gui }
        treesitter["@string.regex"] = { fg = nord.nord12_gui }
        treesitter["@string.escape"] = { fg = nord.nord11_gui }
        treesitter["@character"] = { fg = nord.nord14_gui }
    return treesitter
end

theme.loadFiletypes = function()
    -- Filetype-specific highlight groups

    local ft = {
        -- yaml
        yamlBlockMappingKey = { fg = nord.nord7_gui },
        yamlBool = { link = "Boolean" },
        yamlDocumentStart = { link = "Keyword" },
        yamlTSField = { fg = nord.nord7_gui },
        yamlTSString = { fg = nord.nord4_gui },
        yamlTSPunctSpecial = { link = "Keyword" },
        yamlKey = { fg = nord.nord7_gui }, -- stephpy/vim-yaml
    }

    return ft
end

theme.loadLSP = function()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError = { fg = nord.nord11_gui }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError = { style = "undercurl", sp = nord.nord11_gui }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning = { fg = nord.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = nord.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning = { fg = nord.nord15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning = { fg = nord.nord15_gui }, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = nord.nord15_gui }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation = { fg = nord.nord10_gui }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation = { fg = nord.nord10_gui }, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation = { fg = nord.nord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = { fg = nord.nord10_gui }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = nord.nord10_gui }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint = { fg = nord.nord9_gui }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint = { style = "undercurl", sp = nord.nord10_gui }, -- used to underline "Hint" diagnostics.
        LspReferenceText = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "text" references
        LspReferenceRead = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "read" references
        LspReferenceWrite = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "write" references

        DiagnosticError = { link = "LspDiagnosticsDefaultError" },
        DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
        DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
        DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
        DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
        DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
        DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
        DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
        DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
        DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
        DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
        DiagnosticSignError = { link = "LspDiagnosticsSignError" },
        DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
        DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
        DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
        DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
        DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
        DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
        DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
        DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
    }

    return lsp
end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText = { fg = nord.nord4_gui },
        LspTroubleCount = { fg = nord.nord9_gui, bg = nord.nord10_gui },
        LspTroubleNormal = { fg = nord.nord4_gui, bg = nord.sidebar },

        -- Diff
        diffAdded = { fg = nord.nord14_gui },
        diffRemoved = { fg = nord.nord11_gui },
        diffChanged = { fg = nord.nord15_gui },
        diffOldFile = { fg = nord.yelow },
        diffNewFile = { fg = nord.nord12_gui },
        diffFile = { fg = nord.nord7_gui },
        diffLine = { fg = nord.nord3_gui },
        diffIndexLine = { fg = nord.nord9_gui },

        -- Neogit
        NeogitBranch = { fg = nord.nord10_gui },
        NeogitRemote = { fg = nord.nord9_gui },
        NeogitHunkHeader = { fg = nord.nord8_gui },
        NeogitHunkHeaderHighlight = { fg = nord.nord8_gui, bg = nord.nord1_gui },
        NeogitDiffContextHighlight = { bg = nord.nord1_gui },
        NeogitDiffDeleteHighlight = { fg = nord.nord11_gui, style = "reverse" },
        NeogitDiffAddHighlight = { fg = nord.nord14_gui, style = "reverse" },

        -- GitGutter
        GitGutterAdd = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsCurrentLineBlame = { fg = nord.nord3_gui_bright, style = bold },

        -- Telescope
        TelescopePromptBorder = { fg = nord.nord4_gui },
        TelescopeResultsBorder = { fg = nord.nord4_gui },
        TelescopePreviewBorder = { fg = nord.nord4_gui },
        TelescopeSelectionCaret = { fg = nord.nord9_gui },
        TelescopeSelection = { fg = nord.nord6_gui, bg = nord.nord2_gui },
        TelescopeMatching = { link = 'Search' },

        -- NvimTree
        NvimTreeRootFolder = { fg = nord.nord15_gui },
        NvimTreeSymlink = { fg = nord.nord5_gui },
        NvimTreeFolderName = { fg = nord.nord4_gui },
        NvimTreeFolderIcon = { fg = nord.nord9_gui },
        NvimTreeEmptyFolderName = { fg = nord.nord4_gui },
        NvimTreeOpenedFolderName = { fg = nord.nord5_gui },
        NvimTreeExecFile = { fg = nord.nord4_gui },
        NvimTreeOpenedFile = { fg = nord.nord6_gui },
        NvimTreeSpecialFile = { fg = nord.nord4_gui, style = bold },
        NvimTreeImageFile = { fg = nord.nord4_gui },
        NvimTreeMarkdownFile = { fg = nord.nord4_gui },
        NvimTreeIndentMarker = { fg = nord.nord9_gui },
        NvimTreeGitDirty = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitStaged = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitMerge = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitRenamed = { fg = nord.nord13_gui }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitNew = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        NvimTreeGitDeleted = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        NvimTreeGitIgnored = { fg = nord.nord3_gui_bright },
        LspDiagnosticsError = { fg = nord.nord12_gui },
        LspDiagnosticsWarning = { fg = nord.nord15_gui },
        LspDiagnosticsInformation = { fg = nord.nord10_gui },
        LspDiagnosticsHint = { fg = nord.nord9_gui },

        -- WhichKey
        WhichKey = { fg = nord.nord8_gui, style = bold },
        WhichKeyGroup = { fg = nord.nord5_gui },
        WhichKeyDesc = { fg = nord.nord7_gui, style = italic },
        WhichKeySeperator = { fg = nord.nord9_gui },
        WhichKeyFloating = { bg = nord.nord1_gui },
        WhichKeyFloat = { bg = nord.nord1_gui },
        WhichKeyValue = { fg = nord.nord7_gui },

        -- LspSaga
        DiagnosticError = { fg = nord.nord12_gui },
        DiagnosticWarning = { fg = nord.nord15_gui },
        DiagnosticInformation = { fg = nord.nord10_gui },
        DiagnosticHint = { fg = nord.nord9_gui },
        DiagnosticTruncateLine = { fg = nord.nord4_gui },
        LspFloatWinBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaDefPreviewBorder = { fg = nord.nord4_gui, bg = nord.float },
        DefinitionIcon = { fg = nord.nord7_gui },
        TargetWord = { fg = nord.nord6_gui, style = 'bold' },
        -- LspSaga code action
        LspSagaCodeActionTitle = { link = 'Title' },
        LspSagaCodeActionBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
        LspSagaCodeActionContent = { fg = nord.nord4_gui },
        -- LspSag finder
        LspSagaLspFinderBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaAutoPreview = { fg = nord.nord4_gui },
        LspSagaFinderSelection = { fg = nord.nord6_gui, bg = nord.nord2_gui },
        TargetFileName = { fg = nord.nord4_gui },
        FinderParam = { fg = nord.nord15_gui, bold = true },
        FinderVirtText = { fg = nord.nord15_gui15, bg = nord.none },
        DefinitionsIcon = { fg = nord.nord9_gui },
        Definitions = { fg = nord.nord15_gui, bold = true },
        DefinitionCount = { fg = nord.nord10_gui },
        ReferencesIcon = { fg = nord.nord9_gui },
        References = { fg = nord.nord15_gui, bold = true },
        ReferencesCount = { fg = nord.nord10_gui },
        ImplementsIcon = { fg = nord.nord9_gui },
        Implements = { fg = nord.nord15_gui, bold = true },
        ImplementsCount = { fg = nord.nord10_gui },
        -- LspSaga finder spinner
        FinderSpinnerBorder = { fg = nord.nord4_gui, bg = nord.float },
        FinderSpinnerTitle = { link = 'Title' },
        FinderSpinner = { fg = nord.nord8_gui, bold = true },
        FinderPreviewSearch = { link = 'Search' },
        -- LspSaga definition
        DefinitionBorder = { fg = nord.nord4_gui, bg = nord.float },
        DefinitionArrow = { fg = nord.nord8_gui },
        DefinitionSearch = { link = 'Search' },
        DefinitionFile = { fg = nord.nord4_gui, bg = nord.float },
        -- LspSaga hover
        LspSagaHoverBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
        -- Lsp rename
        LspSagaRenameBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaRenameMatch = { fg = nord.nord6_gui, bg = nord.nord9_gui },
        -- Lsp diagnostic
        LspSagaDiagnosticSource = { link = 'Comment' },
        LspSagaDiagnosticError = { link = 'DiagnosticError' },
        LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
        LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
        LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
        LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
        LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
        LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
        LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
        LspSagaDiagnosticBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaDiagnosticHeader = { fg = nord.nord4_gui },
        DiagnosticQuickFix = { fg = nord.nord14_gui, bold = true },
        DiagnosticMap = { fg = nord.nord15_gui },
        DiagnosticLineCol = { fg = nord.nord4_gui },
        LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
        ColInLineDiagnostic = { link = 'Comment' },
        -- LspSaga signture help
        LspSagaSignatureHelpBorder = { fg = nord.nord4_gui, bg = nord.float },
        LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
        -- Lspsaga lightbulb
        LspSagaLightBulb = { link = 'DiagnosticSignHint' },
        -- LspSaga shadow
        SagaShadow = { fg = 'black' },
        -- LspSaga float
        LspSagaBorderTitle = { link = 'Title' },
        -- LspSaga Outline
        LSOutlinePreviewBorder = { fg = nord.nord4_gui, bg = nord.float },
        OutlineIndentEvn = { fg = nord.nord15_gui },
        OutlineIndentOdd = { fg = nord.nord12_gui },
        OutlineFoldPrefix = { fg = nord.nord11_gui },
        OutlineDetail = { fg = nord.nord4_gui },
        -- LspSaga all floatwindow
        LspFloatWinNormal = { fg = nord.nord4_gui, bg = nord.float },
        -- Saga End

        -- Sneak
        Sneak = { fg = nord.nord0_gui, bg = nord.nord4_gui },
        SneakScope = { bg = nord.nord1_gui },

        -- Cmp
        CmpItemKind = { fg = nord.nord15_gui },
        CmpItemAbbrMatch = { fg = nord.nord5_gui, style = bold },
        CmpItemAbbrMatchFuzzy = { fg = nord.nord5_gui, style = bold },
        CmpItemAbbr = { fg = nord.nord4_gui },
        CmpItemMenu = { fg = nord.nord14_gui },

        -- Indent Blankline
        IndentBlanklineChar = { fg = nord.nord3_gui },
        IndentBlanklineContextChar = { fg = nord.nord10_gui },

        -- headline
        -- bg = (10 * nord0 + fg) / 11
        Headline1 = { fg = nord.nord12_gui, bg = "#3d3c44", bold = true },
        Headline2 = { fg = nord.nord13_gui, bg = "#3f4247", bold = true },
        Headline3 = { fg = nord.nord14_gui, bg = "#394147", bold = true },
        Headline4 = { fg = nord.nord9_gui, bg = "#363e4c", bold = true },
        Headline5 = { fg = nord.nord15_gui, bg = "#3a3c4a", bold = true },
        Headline6 = { fg = nord.nord4_gui, bg = "#3d434f", bold = true },

        Quote = { fg = nord.nord2_gui },
        CodeBlock = { bg = nord.nord1_gui },
        Dash = { nord.nord10_gui, bold = true },

        -- Illuminate
        illuminatedWord = { bg = nord.nord3_gui },
        illuminatedCurWord = { bg = nord.nord3_gui },
        IlluminatedWordText = { bg = nord.nord3_gui },
        IlluminatedWordRead = { bg = nord.nord3_gui },
        IlluminatedWordWrite = { bg = nord.nord3_gui },

        -- nvim-dap
        DapBreakpoint = { fg = nord.nord14_gui },
        DapStopped = { fg = nord.nord15_gui },

        -- nvim-dap-ui
        DapUIVariable = { fg = nord.nord4_gui },
        DapUIScope = { fg = nord.nord8_gui },
        DapUIType = { fg = nord.nord9_gui },
        DapUIValue = { fg = nord.nord4_gui },
        DapUIModifiedValue = { fg = nord.nord8_gui },
        DapUIDecoration = { fg = nord.nord8_gui },
        DapUIThread = { fg = nord.nord8_gui },
        DapUIStoppedThread = { fg = nord.nord8_gui },
        DapUIFrameName = { fg = nord.nord4_gui },
        DapUISource = { fg = nord.nord9_gui },
        DapUILineNumber = { fg = nord.nord8_gui },
        DapUIFloatBorder = { fg = nord.nord8_gui },
        DapUIWatchesEmpty = { fg = nord.nord11_gui },
        DapUIWatchesValue = { fg = nord.nord8_gui },
        DapUIWatchesError = { fg = nord.nord11_gui },
        DapUIBreakpointsPath = { fg = nord.nord8_gui },
        DapUIBreakpointsInfo = { fg = nord.nord8_gui },
        DapUIBreakpointsCurrentLine = { fg = nord.nord8_gui },
        DapUIBreakpointsLine = { fg = nord.nord8_gui },

        -- Hop
        HopNextKey = { fg = nord.nord4_gui, style = bold },
        HopNextKey1 = { fg = nord.nord8_gui, style = bold },
        HopNextKey2 = { fg = nord.nord4_gui },
        HopUnmatched = { fg = nord.nord3_gui },

        -- Fern
        FernBranchText = { fg = nord.nord3_gui_bright },

        -- nvim-ts-rainbow
        rainbowcol1 = { fg = nord.nord15_gui },
        rainbowcol2 = { fg = nord.nord13_gui },
        rainbowcol3 = { fg = nord.nord11_gui },
        rainbowcol4 = { fg = nord.nord7_gui },
        rainbowcol5 = { fg = nord.nord8_gui },
        rainbowcol6 = { fg = nord.nord15_gui },
        rainbowcol7 = { fg = nord.nord13_gui },

        -- lightspeed
        LightspeedLabel = { fg = nord.nord8_gui, style = bold },
        LightspeedLabelOverlapped = { fg = nord.nord8_gui, style = "bold,underline" },
        LightspeedLabelDistant = { fg = nord.nord15_gui, style = bold },
        LightspeedLabelDistantOverlapped = { fg = nord.nord15_gui, style = "bold,underline" },
        LightspeedShortcut = { fg = nord.nord10_gui, style = bold },
        LightspeedShortcutOverlapped = { fg = nord.nord10_gui, style = "bold,underline" },
        LightspeedMaskedChar = { fg = nord.nord4_gui, bg = nord.nord2_gui, style = bold },
        LightspeedGreyWash = { fg = nord.nord3_gui_bright },
        LightspeedUnlabeledMatch = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        LightspeedOneCharMatch = { fg = nord.nord8_gui, style = "bold,reverse" },
        LightspeedUniqueChar = { style = "bold,underline" },

        -- copilot
        CopilotLabel = { fg = nord.nord3_gui, bg = nord.none },

        -- Statusline
        StatusLineDull = { fg = nord.nord3_gui, bg = nord.nord1_gui },
        StatusLineAccent = { fg = nord.nord0_gui, bg = nord.nord13_gui },

        -- mini.nvim
        MiniCompletionActiveParameter = { style = "underline" },

        MiniCursorword = { bg = nord.nord3_gui },
        MiniCursorwordCurrent = { bg = nord.nord3_gui },

        MiniIndentscopeSymbol = { fg = nord.nord10_gui },
        MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

        MiniJump = { fg = nord.nord0_gui, bg = nord.nord4_gui },

        MiniJump2dSpot = { fg = nord.nord12_gui, style = "bold,nocombine" },

        MiniStarterCurrent = { style = "nocombine" },
        MiniStarterFooter = { fg = nord.nord14_gui, style = italic },
        MiniStarterHeader = { fg = nord.nord9_gui },
        MiniStarterInactive = { link = "Comment" },
        MiniStarterItem = { link = "Normal" },
        MiniStarterItemBullet = { fg = nord.nord4_gui },
        MiniStarterItemPrefix = { fg = nord.nord15_gui },
        MiniStarterSection = { fg = nord.nord4_gui },
        MiniStarterQuery = { fg = nord.nord10_gui },

        MiniStatuslineDevinfo = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        MiniStatuslineFileinfo = { fg = nord.nord4_gui, bg = nord.nord2_gui },
        MiniStatuslineFilename = { fg = nord.nord4_gui, bg = nord.nord1_gui },
        MiniStatuslineInactive = { fg = nord.nord4_gui, bg = nord.nord0_gui, style = bold },
        MiniStatuslineModeCommand = { fg = nord.nord0_gui, bg = nord.nord15_gui, style = bold },
        MiniStatuslineModeInsert = { fg = nord.nord1_gui, bg = nord.nord4_gui, style = bold },
        MiniStatuslineModeNormal = { fg = nord.nord1_gui, bg = nord.nord9_gui, style = bold },
        MiniStatuslineModeOther = { fg = nord.nord0_gui, bg = nord.nord13_gui, style = bold },
        MiniStatuslineModeReplace = { fg = nord.nord0_gui, bg = nord.nord11_gui, style = bold },
        MiniStatuslineModeVisual = { fg = nord.nord0_gui, bg = nord.nord7_gui, style = bold },

        MiniSurround = { link = "IncSearch" },

        MiniTablineCurrent = { bg = nord.nord1_gui },
        MiniTablineFill = { link = "TabLineFill" },
        MiniTablineHidden = { bg = nord.nord0_gui, fg = nord.nord3_gui },
        MiniTablineModifiedCurrent = { bg = nord.nord1_gui, fg = nord.nord15_gui },
        MiniTablineModifiedHidden = { bg = nord.nord0_gui, fg = nord.nord15_gui },
        MiniTablineModifiedVisible = { bg = nord.nord2_gui, fg = nord.nord15_gui },
        MiniTablineTabpagesection = { fg = nord.nord10_gui, bg = nord.nord6_gui, style = reverse_bold },
        MiniTablineVisible = { bg = nord.nord2_gui },

        MiniTestEmphasis = { style = bold },
        MiniTestFail = { fg = nord.nord11_gui, style = bold },
        MiniTestPass = { fg = nord.nord14_gui, style = bold },

        MiniTrailspace = { bg = nord.nord11_gui },

        -- Aerail
        AerialLine = { bg = nord.nord2_gui },
        AerialLineNC = { bg = nord.nord2_gui },

        AerialArrayIcon = { fg = nord.nord13_gui },
        AerialBooleanIcon = { fg = nord.nord9_gui, style = bold },
        AerialClassIcon = { fg = nord.nord9_gui },
        AerialConstantIcon = { fg = nord.nord13_gui },
        AerialConstructorIcon = { fg = nord.nord9_gui },
        AerialEnumIcon = { fg = nord.nord9_gui },
        AerialEnumMemberIcon = { fg = nord.nord4_gui },
        AerialEventIcon = { fg = nord.nord9_gui },
        AerialFieldIcon = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialFileIcon = { fg = nord.nord14_gui },
        AerialFunctionIcon = vim.g.nord_italic and { fg = nord.nord8_gui, style = italic } or { fg = nord.nord8_gui },
        AerialInterfaceIcon = { fg = nord.nord9_gui },
        AerialKeyIcon = { fg = nord.nord9_gui },
        AerialMethodIcon = vim.g.nord_italic and { fg = nord.nord7_gui, style = italic } or { fg = nord.nord7_gui },
        AerialModuleIcon = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialNamespaceIcon = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic }
            or { fg = nord.nord4_gui },
        AerialNullIcon = { fg = nord.nord9_gui },
        AerialNumberIcon = { fg = nord.nord15_gui },
        AerialObjectIcon = { fg = nord.nord9_gui },
        AerialOperatorIcon = { fg = nord.nord9_gui },
        AerialPackageIcon = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialPropertyIcon = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic }
            or { fg = nord.nord10_gui },
        AerialStringIcon = vim.g.nord_italic and { fg = nord.nord14_gui, style = italic } or { fg = nord.nord14_gui },
        AerialStructIcon = { fg = nord.nord9_gui },
        AerialTypeParameterIcon = { fg = nord.nord10_gui },
        AerialVariableIcon = { fg = nord.nord4_gui, style = bold },

        AerialArray = { fg = nord.nord13_gui },
        AerialBoolean = { fg = nord.nord9_gui, style = bold },
        AerialClass = { fg = nord.nord9_gui },
        AerialConstant = { fg = nord.nord13_gui },
        AerialConstructor = { fg = nord.nord9_gui },
        AerialEnum = { fg = nord.nord9_gui },
        AerialEnumMember = { fg = nord.nord4_gui },
        AerialEvent = { fg = nord.nord9_gui },
        AerialField = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialFile = { fg = nord.nord14_gui },
        AerialFunction = vim.g.nord_italic and { fg = nord.nord8_gui, style = italic } or { fg = nord.nord8_gui },
        AerialInterface = { fg = nord.nord9_gui },
        AerialKey = { fg = nord.nord9_gui },
        AerialMethod = vim.g.nord_italic and { fg = nord.nord7_gui, style = italic } or { fg = nord.nord7_gui },
        AerialModule = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialNamespace = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialNull = { fg = nord.nord9_gui },
        AerialNumber = { fg = nord.nord15_gui },
        AerialObject = { fg = nord.nord9_gui },
        AerialOperator = { fg = nord.nord9_gui },
        AerialPackage = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord4_gui },
        AerialProperty = vim.g.nord_italic and { fg = nord.nord4_gui, style = italic } or { fg = nord.nord10_gui },
        AerialString = vim.g.nord_italic and { fg = nord.nord14_gui, style = italic } or { fg = nord.nord14_gui },
        AerialStruct = { fg = nord.nord9_gui },
        AerialTypeParameter = { fg = nord.nord10_gui },
        AerialVariable = { fg = nord.nord4_gui, style = bold },

        -- nvim-navic
        NavicIconsArray = { fg = nord.nord13_gui },
        NavicIconsBoolean = { fg = nord.nord9_gui, style = bold },
        NavicIconsClass = { fg = nord.nord9_gui },
        NavicIconsConstant = { fg = nord.nord13_gui },
        NavicIconsConstructor = { fg = nord.nord9_gui },
        NavicIconsEnum = { fg = nord.nord9_gui },
        NavicIconsEnumMember = { fg = nord.nord4_gui },
        NavicIconsEvent = { fg = nord.nord9_gui },
        NavicIconsField = { fg = nord.nord4_gui, style = italic },
        NavicIconsFile = { fg = nord.nord14_gui },
        NavicIconsFunction = { fg = nord.nord8_gui, style = italic },
        NavicIconsInterface = { fg = nord.nord9_gui },
        NavicIconsKey = { fg = nord.nord9_gui },
        NavicIconsMethod = { fg = nord.nord7_gui, style = italic },
        NavicIconsModule = { fg = nord.nord4_gui, style = italic },
        NavicIconsNamespace = { fg = nord.nord4_gui, style = italic },
        NavicIconsNull = { fg = nord.nord9_gui },
        NavicIconsNumber = { fg = nord.nord15_gui },
        NavicIconsObject = { fg = nord.nord9_gui },
        NavicIconsOperator = { fg = nord.nord9_gui },
        NavicIconsPackage = { fg = nord.nord4_gui, style = italic },
        NavicIconsProperty = { fg = nord.nord4_gui, style = italic },
        NavicIconsString = { fg = nord.nord14_gui, style = italic },
        NavicIconsStruct = { fg = nord.nord9_gui },
        NavicIconsTypeParameter = { fg = nord.nord10_gui },
        NavicIconsVariable = { fg = nord.nord4_gui, style = bold },
        NavicText = { fg = nord.nord4_gui },
        NavicSeparator = { fg = nord.nord4_gui },
    }
    -- Options:

    -- Disable nvim-tree background
    if vim.g.nord_disable_background then
        plugins.NvimTreeNormal = { fg = nord.nord4_gui, bg = nord.none }
    else
        plugins.NvimTreeNormal = { fg = nord.nord4_gui, bg = nord.sidebar }
    end

    if vim.g.nord_enable_sidebar_background then
        plugins.NvimTreeNormal = { fg = nord.nord4_gui, bg = nord.sidebar }
    else
        plugins.NvimTreeNormal = { fg = nord.nord4_gui, bg = nord.none }
    end

    return plugins
end

return theme
