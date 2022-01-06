local lush = require("lush")
local utils = require("selenized.utils")

local palette = utils.get_palette()

vim.g.colors_name = "selenized"

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Strikethrough  { gui = "strikethrough" },
    Underlined     { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Undercurl      { gui = "undercurl" },
    Reverse        { gui = "reverse" },
    Inverse        { gui = "inverse" },
    Standout       { gui = "standout" },
    Bold           { gui = "bold" },
    Italic         { gui = "italic" },

    Error          { fg = palette.br_red }, -- (preferred) any erroneous construct

    Normal         { bg = palette.bg_0, fg = palette.fg_0 },
    Comment        { fg = palette.dim_0 },
    NormalFloat    { bg = palette.bg_1, fg = Normal.fg }, -- Normal text in floating windows.
    FloatBorder       { bg = palette.bg_0, fg = palette.dim_0 }, -- Border of floating windows
    -- Conceal        { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { Reverse }, -- character under the cursor
    -- lCursor        { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- like Cursor, but used when in IME mode |CursorIM|
    Directory      { fg = palette.cyan }, -- directory names (and other special names in listings)
    DiffAdd        { bg = palette.bg_1, fg = palette.green}, -- diff mode: Added line |diff.txt|
    DiffChange     { bg = palette.bg_1, fg = palette.yellow }, -- diff mode: Changed line |diff.txt|
    DiffDelete     { bg = palette.bg_1, fg = palette.red}, -- diff mode: Deleted line |diff.txt|
    DiffText       { fg = palette.red, Reverse }, -- diff mode: Changed text within a changed line |diff.txt|
    -- TermCursor     { }, -- cursor in a focused terminal
    -- TermCursorNC   { }, -- cursor in an unfocused terminal
    ErrorMsg       { Error }, -- error messages on the command line
    -- VertSplit      { }, -- the column separating vertically split windows
    Folded         { bg = palette.bg_1, fg = palette.dim_0 }, -- line used for closed folds
    ColorColumn    { bg = palette.bg_1 }, -- used for the columns set with 'colorcolumn'
    FoldColumn     { bg = palette.bg_1, fg = palette.fg_0 }, -- 'foldcolumn'
    SignColumn     { bg = palette.bg_0 }, -- column where |signs| are displayed
    LineNr         { Comment },
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    MatchParen     { bg = palette.dim_0 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { Comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- EndOfBuffer    { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { bg = palette.bg_1, Normal }, -- Popup menu: normal item.
    PmenuSel       { bg = palette.bg_2 }, -- Popup menu: selected item.
    PmenuSbar      { bg = palette.bg_2 }, -- Popup menu: scrollbar.
    PmenuThumb     { bg = palette.fg_0 }, -- Popup menu: Thumb of the scrollbar.
    Question       { Normal }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey     { fg = palette.br_cyan, gui = Italic.gui }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- status line of current window
    -- StatusLineNC   { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- tab pages line, not active tab page label
    -- TabLineFill    { }, -- tab pages line, where there are no labels
    -- TabLineSel     { }, -- tab pages line, active tab page label
    Title          { fg = palette.br_violet }, -- titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = palette.bg_2 }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = palette.br_red }, -- warning messages
    Whitespace     { Comment }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu       { Visual }, -- current match in 'wildmenu' completion
    Search         { fg = palette.bg_0, bg = palette.br_yellow },

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = palette.cyan }, -- (preferred) any constant
    String         { fg = palette.green }, --   a string constant: "this is a string"
    Character      { fg = palette.magenta }, --  a character constant: 'c', '\n'
    Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Constant }, --    a floating point constant: 2.3e10

    Identifier     { fg = palette.blue }, -- (preferred) any variable name
    Function       { Identifier }, -- function name (also: methods for classes)

    Statement      { fg = palette.yellow }, -- (preferred) any statement
    Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --    case, default, etc.
    Operator       { Statement }, -- "sizeof", "+", "*", etc.
    Keyword        { Statement }, --  any other keyword
    Exception      { Statement }, --  try, catch, throw

    PreProc        { fg = palette.magenta }, -- (preferred) generic Preprocessor
    Include        { PreProc }, --  preprocessor #include
    Define         { PreProc }, --   preprocessor #define
    Macro          { PreProc }, --    same as Define
    PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = palette.violet }, -- (preferred) int, long, char, etc.
    StorageClass   { Type }, -- static, register, volatile, etc.
    Structure      { Type }, --  struct, union, enum, etc.
    Typedef        { Type }, --  A typedef

    Special        { fg = palette.orange }, -- (preferred) any special symbol
    SpecialChar    { Special }, --  special character in a constant
    Tag            { Special }, --    you can use CTRL-] on this
    Delimiter      { Special }, --  character that needs attention
    SpecialComment { Special }, -- special things inside a comment
    Debug          { Special }, --    debugging statements

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Todo           { fg = palette.br_red, Standout }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may use
    -- these groups, or use their own. Consult your LSP client's documentation.

    DiagnosticError                      { Error }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsDefaultError           { DiagnosticError }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsError                  { LspDiagnosticsDefaultError }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsErrorSign              { LspDiagnosticsError }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsErrorFloating          { LspDiagnosticsError }, -- used for "Error" diagnostic messages in the diagnostics float
    DiagnosticWarn                       { fg = palette.orange }, -- used for "Warning" diagnostic virtual text
    LspDiagnosticsDefaultWarning         { DiagnosticWarn },
    LspDiagnosticsWarning                { LspDiagnosticsDefaultWarning }, -- used for "Warning" diagnostic virtual text
    LspDiagnosticsWarningSign            { LspDiagnosticsWarning }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsWarningFloating        { LspDiagnosticsWarning }, -- used for "Warning" diagnostic messages in the diagnostics float
    DiagnosticInfo                       { fg = palette.blue }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsDefaultInformation     { DiagnosticInfo },
    LspDiagnosticsInformation            { LspDiagnosticsDefaultInformation }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsInformationSign        { LspDiagnosticsInformation }, -- used for "Information" signs in sign column
    LspDiagnosticsInformationFloating    { LspDiagnosticsInformation }, -- used for "Information" diagnostic messages in the diagnostics float
    DiagnosticHint                       { fg = palette.dim_0 }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsDefaultHint            { DiagnosticHint },
    LspDiagnosticsHint                   { LspDiagnosticsDefaultHint }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsHintSign               { LspDiagnosticsHint }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsHintFloating           { LspDiagnosticsHint }, -- used for "Hint" diagnostic messages in the diagnostics float
    -- LspReferenceText                  { }, -- used for highlighting "text" references
    -- LspReferenceRead                  { }, -- used for highlighting "read" references
    -- LspReferenceWrite                 { }, -- used for highlighting "write" references
    DiagnosticUnderlineError             { DiagnosticError, gui = Underlined.gui },
    DiagnosticUnderlineWarn              { DiagnosticWarn, gui = Underlined.gui },
    DiagnosticUnderlineInfo              { DiagnosticInfo, gui = Underlined.gui },
    DiagnosticUnderlineHint              { DiagnosticHint, bg = palette.bg_1 },
    LspDiagnosticsVirtualTextError       { LspDiagnosticsError },
    LspDiagnosticsVirtualTextWarning     { LspDiagnosticsWarning },
    LspDiagnosticsVirtualTextInformation { LspDiagnosticsInformation },
    LspDiagnosticsVirtualTextHint        { LspDiagnosticsHint },

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSError              { }, -- For syntax/parser errors.
    -- TSPunctDelimiter     { }, -- For delimiters ie: `.`
    -- TSPunctBracket       { }, -- For brackets and parens.
    -- TSPunctSpecial       { }, -- For special punctuation that does not fall in the categories before.
    -- TSConstant           { }, -- For constants
    -- TSConstBuiltin       { }, -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { }, -- For constants that are defined by macros: `NULL` in C.
    -- TSString             { }, -- For strings.
    -- TSStringRegex        { }, -- For regexes.
    -- TSStringEscape       { }, -- For escape characters within a string.
    -- TSCharacter          { }, -- For characters.
    -- TSNumber             { }, -- For integers.
    -- TSBoolean            { }, -- For booleans.
    -- TSFloat              { }, -- For floats.
    -- TSFunction           { }, -- For function (calls and definitions).
    -- TSFuncBuiltin        { }, -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { }, -- For macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSParameter          { }, -- For parameters of a function.
    -- TSParameterReference { }, -- For references to parameters of a function.
    -- TSMethod             { }, -- For method calls and definitions.
    -- TSField              { }, -- For fields.
    -- TSProperty           { }, -- Same as `TSField`.
    TSConstructor        { fg = palette.violet }, -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
    TSConditional        { fg = palette.magenta }, -- For keywords related to conditionals.
    -- TSRepeat             { }, -- For keywords related to loops.
    -- TSLabel              { }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSOperator           { }, -- For any operator: `+`, but also `->` and `*` in C.
    -- TSKeyword            { }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { fg = palette.red }, -- For keywords used to define a function.
    -- TSException          { }, -- For exception related keywords.
    -- TSType               { }, -- For types.
    -- TSTypeBuiltin        { }, -- For builtin types (you guessed it, right ?).
    -- TSNamespace          { }, -- For identifiers referring to modules and namespaces.
    -- TSInclude            { }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSAnnotation         { }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSText               { }, -- For strings considered text in a markup language.
    -- TSStrong             { }, -- For text to be represented with strong.
    TSEmphasis           { Bold }, -- For text to be represented with emphasis.
    TSUnderline          { Underlined }, -- For text to be represented with an underline.
    -- TSTitle              { }, -- Text that is part of a title.
    -- TSLiteral            { }, -- Literal text.
    -- TSURI                { }, -- Any URI like a link or email.
    -- TSVariable           { }, -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- 3rd party highlights --

    -- hrsh7th/nvim-cmp
    CmpItemAbbrDeprecated { gui = Strikethrough.gui },
    CmpItemAbbrMatch      { Identifier },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },
    CmpItemKindVariable   { Type },
    CmpItemKindInterface  { CmpItemKindVariable },
    CmpItemKindText       { Normal },
    CmpItemKindFunction   { Special },
    CmpItemKindMethod     { CmpItemKindFunction },
    CmpItemKindKeyword    { Statement },
    CmpItemKindProperty   { Identifier },
    CmpItemKindUnit       { Special },
    CmpItemMenu           { Type },

    -- lukas-reineke/indent-blankline.nvim
    IndentBlanklineContextChar { fg = palette.blue },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd    { bg = Normal.bg, fg = DiffAdd.fg },
    GitSignsChange { bg = Normal.bg, fg = DiffChange.fg },
    GitSignsDelete { bg = Normal.bg, fg = DiffDelete.fg },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap:number
