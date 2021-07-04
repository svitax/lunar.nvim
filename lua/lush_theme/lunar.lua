--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial
--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--
-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`
local lush = require('lush')
-- local hsl = lush.hsl

local c = {
    fg = "#ABB2BF",
    bg = '#232731',
    red = "#BF616A",
    green = "#A3BE8C",
    yellow = "#E7cb93",
    blue = "#5e81ac",
    purple = "#B48EAD",
    cyan = "#88c0d0",
    orange = "#c68a75",
    grey = "#9BA1AB",

    error_red = "#F44747",
    light_green = "#B5CEA8",
    git_green = "#81B88B",
    executable = "#23D18B",
    dark_yellow = "#D7BA7D",
    info_yellow = "#FFCC66",
    grey_blue = "#81A1C1",
    light_blue = "#88C0D0",
    vivid_blue = "#4FC1FF",
    search_blue = "#1da1f2",
    symlink = "#29B8D8",
    warning_orange = "#ff8800",

    white = "#D8DEE9",
    black = "#3b4252",

    line_grey = "#5C6370",
    gutter_fg_grey = "#6A6E7E",
    cursor_grey = "#2C323C",
    visual_grey = "#3E4452",
    menu_grey = "#434C5E",
    special_grey = "#3B4048",
    vertsplit = "#4C566A",
    tabfill = "#292D38",
    bg_inactive = "#2F343F",
    cursor_fg = "#515052",
    cursor_bg = "#AEAFAD",
    indentlinehighlight = "#767A8B",

    git = {delete = "#c14a4a", add = "#81B88B", change = "#4FC1FF"},
    gitSigns = {delete = "#94151B", add = "#587C0C", change = "#0C7D9D"},
    -- lightspeed = {secondary = "#00C7DF", primary = "#eF5F70"},
    lightspeed = {secondary = "#9ADDFF", primary = "#F00077"}
}

local theme = lush(function()
    return {
        -- The following are all the Neovim default highlight groups from the docs
        -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
        -- probably style all of these at a bare minimum.
        --
        -- Referenced/linked groups must come before being referenced/lined,
        -- so the order shown ((mostly) alphabetical) is likely
        -- not the order you will end up with.
        --
        -- You can uncomment these and leave them empty to disable any
        -- styling for that group (meaning they mostly get styled as Normal)
        -- or leave them commented to apply vims default colouring or linking.

        Comment {fg = c.vertsplit, gui = "italic"}, -- any comment
        ColorColumn {bg = c.cursor_grey}, -- used for the columns set with 'colorcolumn'
        Conceal {fg = c.line_grey}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor {fg = c.cursor_fg, bg = c.cursor_bg}, -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn {bg = c.cursor_grey}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine {bg = c.cursor_grey}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory {fg = c.blue}, -- directory names (and other special names in listings)
        DiffAdd {fg = c.git.add, bg = c.bg}, -- diff mode: Added line |diff.txt|
        DiffChange {fg = c.git.change, gui = "underline"}, -- diff mode: Changed line |diff.txt|
        DiffDelete {fg = c.git.delete, bg = c.bg}, -- diff mode: Deleted line |diff.txt|
        DiffText {fg = c.bg, bg = c.yellow}, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer {fg = c.bg}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- cursor in a focused terminal
        -- TermCursorNC { }, -- cursor in an unfocused terminal
        ErrorMsg {fg = c.error_red}, -- error messages on the command line
        VertSplit {fg = c.vertsplit}, -- the column separating vertically split windows
        Folded {fg = c.line_grey}, -- line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn {bg = c.bg}, -- column where |signs| are displayed
        -- IncSearch {fg = colors.aqua, bg = colors.bg3}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        IncSearch {bg = c.line_grey}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute {fg = colors.bh0_h, bg = colors.red}, -- |:substitute| replacement text highlighting
        LineNr {fg = c.gutter_fg_grey}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr {fg = c.white, gui = "bold"}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen {fg = c.search_blue, gui = "underline"}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        MatchWord {gui = "underline"},
        MatchWordCur {gui = "underline"},
        MatchParenCur {fg = c.search_blue, gui = "underline"},
        -- ModeMsg {fg = colors.fg, gui = "bold"}, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea {fg = colors.fg}, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg {fg = colors.fg}, -- |more-prompt|
        NonText {fg = c.special_grey}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal {fg = c.fg, bg = c.bg}, -- normal text
        NormalFloat {fg = c.fg, bg = c.bg}, -- Normal text in floating windows.
        FloatBorder {fg = c.menu_grey}, -- TODO maybe menu_grey
        -- NormalNC     { }, -- normal text in non-current windows
        -- NormalSB =   { }, -- normal text in non-current windows
        Pmenu {fg = c.white, bg = c.menu_grey}, -- Popup menu: normal item.
        PmenuSel {fg = c.black, bg = c.blue}, -- Popup menu: selected item.
        PmenuSbar {bg = c.special_grey}, -- Popup menu: scrollbar.
        PmenuThumb {bg = c.white}, -- Popup menu: Thumb of the scrollbar.
        Question {fg = c.purple}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine {bg = c.line_grey}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search {bg = c.line_grey}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        SpecialKey {fg = c.special_grey}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad {fg = c.error_red, style = "underline"}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
        SpellCap {fg = c.dark_yellow}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal {fg = c.dark_yellow}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare {fg = c.dark_yellow}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine {fg = c.white, bg = c.cursor_grey}, -- status line of current window
        StatusLineNC {fg = c.line_grey}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine {fg = c.line_grey}, -- tab pages line, not active tab page label
        TabLineFill {bg = c.tabfill}, -- tab pages line, where there are no labels
        TabLineSel {fg = c.white}, -- tab pages line, active tab page label
        Title {fg = c.cyan}, -- titles for output from ":set all", ":autocmd" etc.
        Visual {bg = c.visual_grey}, -- Visual mode selection
        VisualNOS {bg = c.visual_grey}, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg {fg = c.yellow}, -- warning messages
        -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu {fg = c.black, bg = c.blue}, -- current added nvim-comment configmatch in 'wildmenu' completion
        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.
        Constant {fg = c.yellow}, -- (preferred) any constant
        String {fg = c.green}, --   a string constant: "this is a string"
        Character {fg = c.orange}, --  a character constant: 'c', '\n'
        Number {fg = c.light_green}, --   a number constant: 234, 0xff
        Boolean {fg = c.orange}, --  a boolean constant: TRUE, false
        Float {fg = c.red}, --    a floating point constant: 2.3e10
        Identifier {fg = c.blue}, -- (preferred) any variable name
        Function {fg = c.yellow}, -- function name (also: methods for classes)
        Statement {fg = c.blue}, -- (preferred) any statement
        Conditional {fg = c.grey_blue}, --  if, then, else, endif, switch, etc.
        Repeat {fg = c.blue}, --   for, do, while, etc.
        Label {fg = c.light_blue}, --    case, default, etc.
        Operator {fg = c.grey_blue}, -- "sizeof", "+", "*", etc.
        Keyword {fg = c.blue}, --  any other keyword
        Exception {fg = c.blue}, --  try, catch, throw
        PreProc {fg = c.yellow}, -- (preferred) generic Preprocessor
        Include {fg = c.blue}, --  preprocessor #include
        Define {fg = c.blue}, --   preprocessor #define
        Macro {fg = c.blue}, --    same as Define
        PreCondit {fg = c.light_blue}, --  preprocessor #if, #else, #endif, etc.
        Type {fg = c.purple}, -- (preferred) int, long, char, etc.
        StorageClass {fg = c.light_blue}, -- static, register, volatile, etc.
        Structure {fg = c.yellow}, --  struct, union, enum, etc.
        Typedef {fg = c.purple}, --  A typedef
        Special {fg = c.blue, style = "italic"}, -- (preferred) any special symbol
        -- SpecialChar    { }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { }, --  character that needs attention
        SpecialComment {fg = c.vertsplit}, -- special things inside a comment
        -- Debug          { }, --    debugging statements
        Underlined {fg = c.cyan, gui = "underline"}, -- (preferred) text that stands out, HTML links
        Bold {gui = "bold"}, Italic {gui = "italic"}, -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|
        Error {fg = c.error_red, gui = "bold"}, -- (preferred) any erroneous construct
        Todo {fg = colors.purple, gui = "italic"}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.

        -- LspReferenceText {bg = c.bg2}, -- used for highlighting "text" references
        -- LspReferenceRead {bg = c.bg2}, -- used for highlighting "read" references
        -- LspReferenceWrite {bg = c.bg2}, -- used for highlighting "write" references
        LspDiagnosticsDefaultError {fg = c.error_red}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning {fg = c.warning_orange}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation {fg = c.info_yellow}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint {fg = c.vivid_blue}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        LspDiagnosticsVirtualTextError {fg = c.error_red}, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning {fg = c.warning_orange}, -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation {fg = c.info_yellow}, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint {fg = c.vivid_blue}, -- Used for "Hint" diagnostic virtual text
        LspDiagnosticsUnderlineError {fg = c.error_red, gui = "undercurl"}, -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning {
            fg = c.warning_orange,
            gui = "undercurl"
        }, -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation {
            fg = c.info_yellow,
            gui = "undercurl"
        }, -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint {fg = c.grey, gui = "undercurl"}, -- Used to underline "Hint" diagnostics
        -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float
        -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column
        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.
        TSAnnotation {fg = c.yellow}, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute {fg = c.light_blue}, -- (unstable) TODO: docs
        TSBoolean {fg = c.orange}, -- For booleans.
        TSCharacter {fg = c.orange}, -- For characters.
        TSComment {fg = c.vertsplit, gui = "italic"}, -- For comment blocks.
        TSConstructor {fg = c.purple}, -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
        TSConditional {fg = c.grey_blue}, -- For keywords related to conditionnals.
        TSConstant {fg = c.yellow}, -- For constants
        TSConstBuiltin {fg = c.blue}, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro {fg = c.light_blue}, -- For constants that are defined by macros: `NULL` in C.
        TSError {fg = c.error_red}, -- For syntax/parser errors.
        TSException {fg = c.blue}, -- For exception related keywords.
        TSField {fg = c.white}, -- For fields.
        TSFloat {fg = c.red}, -- For floats.
        TSFunction {fg = c.yellow}, -- For function (calls and definitions).
        TSFuncBuiltin {fg = c.yellow}, -- For builtin functions: `table.insert` in Lua.
        TSFuncMacro {fg = c.yellow}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude {fg = c.blue}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword {fg = c.blue}, -- For keywords that don't fall in previous categories.
        TSKeywordFunction {fg = c.grey_blue}, -- For keywords used to define a fuction.
        TSKeywordOperator {fg = c.blue}, --
        TSLabel {fg = c.light_blue}, -- For labels: `label:` in C and `:label:` in Lua.
        TSMethod {fg = c.yellow}, -- For method calls and definitions.
        TSNamespace {fg = c.light_blue}, -- For identifiers referring to modules and namespaces.
        -- TSNone               { };    -- TODO: docs
        TSNumber {fg = c.red}, -- For all numbers
        TSOperator {fg = c.grey_blue}, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter {fg = c.white}, -- For parameters of a function.
        TSParameterReference {fg = c.white}, -- For references to parameters of a function.
        TSProperty {fg = c.cyan}, -- Same as `TSField`.
        TSPunctDelimiter {fg = c.white}, -- For delimiters ie: `.`
        TSPunctBracket {fg = c.white}, -- For brackets and parens.
        TSRepeat {fg = colors.purple}, -- For keywords related to loops.
        TSPunctSpecial {fg = c.white}, -- For special punctutation that does not fall in the catagories before.
        TSString {fg = c.green}, -- For strings.
        TSStringRegex {fg = c.green}, -- For regexes.
        TSStringEscape {fg = c.dark_yellow}, -- For escape characters within a string.
        -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
        TSType {fg = c.purple}, -- For types.
        TSTypeBuiltin {fg = c.purple}, -- For builtin types.
        TSVariable {fg = c.white}, -- Any variable name that does not have another highlight.
        TSVariableBuiltin {fg = c.white}, -- Variable names that are defined by the languages, like `this` or `self`.

        TSStructure {fg = c.yellow}, --
        TSTag {fg = c.blue}, -- Tags like html tag names.
        TSTagDelimiter {fg = c.menu_grey}, -- Tag delimiter like `<` `>` `/`
        TSText {fg = c.fg}, -- For strings considered text in a markup language.
        TSStrong {fg = c.yellow}, --
        TSEmphasis {fg = c.purple}, -- For text to be represented with emphasis.
        TSUnderline {fg = c.red}, -- For text to be represented with an underline.
        -- TSStrike {fg = colors.yellow}, -- For strikethrough text.
        TSTitle {fg = c.fg}, -- Text that is part of a title.
        TSLiteral {fg = c.grey}, -- Literal text.
        TSURI {gui = "underline"}, -- Any URI like a link or email.
        TSQueryLinterError {fg = "warning_orange"}, --

        -- START which-key --
        WhichKey {fg = c.purple}, 
        WhichKeySeperator {fg = c.green},
        WhichKeyGroup {fg = c.vivid_blue}, --
        WhichKeyDesc {fg = c.blue},
        WhichKeyFloat {bg = c.bg}, 
        -- WhichKeyValue {fg = colors.bg2}, --
        -- END which-key --

        -- START nvimtree --
        NvimTreeNormal {fg = c.fg},
        NvimTreeRootFolder {fg = c.fg, gui = "bold"},
        NvimTreeFolderName {fg = c.blue}, 
        NvimTreeFolderIcon {fg = c.blue},
        NvimTreeEmptyFolderName {fg = c.blue},
        NvimTreeOpenedFolderName {fg = c.vivid_blue},
        NvimTreeImageFile {fg = c.purple}, 
        NvimTreeExecFile {fg = c.executable},
        NvimTreeSpecialFile {fg = c.info_yellow, gui = "underline"},
        NvimTreeSymlink {fg = c.symlink}, 
        NvimTreeGitNew {fg = c.git.add},
        NvimTreeGitDirty {fg = c.git_green},
        NvimTreeGitDeleted {fg = c.git.delete},
        NvimTreeGitStaged {fg = c.git_green},
        NvimTreeGitMerge {fg = c.git_green},
        NvimTreeGitRenamed {fg = c.git_green},
        NvimTreeIndentMarker {fg = c.line_grey},
        NvimTreeLspDiagnostics {fg = c.warning_orange},
        -- LspDiagnosticsError = { fg = c.error },
        -- LspDiagnosticsWarning = { fg = c.warning },
        -- LspDiagnosticsInformation = { fg = c.info },
        -- LspDiagnosticsHint = { fg = c.hint },
        -- END nvimtree --

        -- START dashboard
        -- DashboardShortCut {fg = c.purple},
        DashboardHeader {fg = c.cyan}, DashboardCenter {fg = c.orange},
        DashboardFooter {fg = c.light_blue, gui = "italic"}, -- END dashboard
        -- START hop
        HopNextKey {fg = c.error_red, gui = "bold"},
        HopUnmatched {fg = c.vertsplit}, --
        -- END hop
        -- START easymotion
        EasyMotionTarget {fg = c.error_red, gui = "bold"},
        EasyMotionTarget2First {fg = c.error_red, gui = "bold"},
        EasyMotionTarget2Second {fg = c.error_red, gui = "bold"},
        EasyMotionShade {fg = c.vertsplit}, --
        -- END easymotion
        --
        -- START gitsigns
        GitSignsAdd {fg = c.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitSignsChange {fg = c.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitSignsDelete {fg = c.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- END gitsigns

        -- START gitgutter
        GitGutterAdd {fg = c.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitGutterChange {fg = c.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitGutterDelete {fg = c.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- END gitgutter

        --  START neogit
        NeogitBranch {fg = c.blue}, NeogitRemote {fg = c.blue},
        NeogitHunkHeader {bg = c.bg_inactive, fg = c.purple},
        NeogitHunkHeaderHighlight {bg = c.bg_inactive, fg = c.purple},
        NeogitDiffContextHighlight {bg = c.cursor_grey},
        NeogitDiffDeleteHighlight {fg = c.git.delete, bg = c.cursor_grey},
        NeogitDiffAddHighlight {fg = c.git.add, bg = c.cursor_grey},
        --  END neogit

        --  START quickscope 
        QuickScopePrimary {fg = "#00C7DF", gui = "underline"},
        QuickScopeSecondary {fg = "#eF5F70", gui = "underline"},
        --  END quickscope 

        --  START lightspeed.nvim
        -- LightspeedCursor {fg = c.black, bg = c.yellow},
        LightspeedLabel {fg = c.lightspeed.primary, gui = "bold, underline"},
        LightspeedLabelOverlapped {fg = c.lightspeed.primary, gui = "underline"},
        LightspeedLabelDistant {fg = c.lightspeed.secondary, gui = "bold, underline"},
        LightspeedLabelDistantOverlapped {fg = c.lightspeed.secondary, gui = "underline"},
        LightspeedShortcut {
            fg = c.white,
            bg = c.lightspeed.primary,
            gui = "bold, underline"
        },
        LightspeedShortcutOverlapped {fg = c.white, bg = c.lightspeed.primary, gui = "bold, underline"},
        LightspeedMaskedChar {fg = c.red},
        LightspeedGreyWash {fg = c.line_grey},
        LightspeedUnlabeledMatch {fg = c.white, gui = "bold"},
        LightspeedOneCharMatch {fg = c.white, bg = c.lightspeed.primary, gui = "bold"},
        LightspeedUniqueChar {fg = c.white, gui = "bold"},
        LightspeedPendingOpArea {fg = c.white, bg = c.lightspeed.primary},
        LightspeedPendingChangeOpArea {fg = c.lightspeed.primary, gui = "italic, strikethrough"},
        --  END lightspeed.nvim

        --  START buffer
        BufferCurrent {fg = c.fg, bg = c.bg},
        BufferCurrentIndex {fg = c.blue, bg = c.bg},
        BufferCurrentMod {fg = c.fg, bg = c.bg},
        BufferCurrentSign {fg = c.blue, bg = c.bg},
        BufferCurrentTarget {fg = c.red, bg = c.bg, gui = "bold"},

        BufferVisible {fg = c.fg, bg = c.bg},
        BufferVisibleIndex {fg = c.fg, bg = c.bg},
        BufferVisibleMod {fg = c.fg, bg = c.bg},
        BufferVisibleSign {fg = c.fg, bg = c.bg},
        BufferVisibleTarget {fg = c.red, bg = c.bg, gui = "bold"},

        BufferInactive {fg = c.gutter_fg_grey, bg = c.bg_inactive},
        BufferInactiveIndex {fg = c.gutter_fg_grey, bg = c.bg_inactive},
        BufferInactiveMod {fg = c.gutter_fg_grey, bg = c.bg_inactive},
        BufferInactiveSign {fg = c.gutter_fg_grey, bg = c.bg_inactive},
        BufferInactiveTarget {fg = c.red, bg = c.bg_inactive, gui = "bold"}, --
        
        -- BufferTabpages: "blue bg_inactive b",
        -- BufferTabpageFill: "gutter_fg_grey bg_inactive",
        --  END buffer

        -- START html (keep consistent with markdown, below)
        htmlArg {fg = c.dark_yellow},
        htmlBold {fg = c.dark_yellow, gui = "bold"},
        htmlEndTag {fg = c.white},
        htmlH1 {fg = c.blue},
        htmlH2 {fg = c.blue},
        htmlH3 {fg = c.blue},
        htmlH4 {fg = c.blue},
        htmlH5 {fg = c.blue},
        htmlH6 {fg = c.blue},
        htmlItalic {fg = c.purple, gui = "italic"},
        htmlLink {fg = c.cyan, gui = "underline"},
        htmlSpecialChar {fg = c.dark_yellow},
        htmlSpecialTagName {fg = c.blue},
        htmlTag {fg = c.white},
        htmlTagN {fg = c.blue},
        htmlTagName {fg = c.blue},
        htmlTitle {fg = c.white},
        -- END html (keep consistent with markdown, below)

        -- START markdown (keep consistent with HTML, above)
        markdownBlockquote {fg = c.line_grey},
        markdownBold {fg = c.dark_yellow, gui = "bold"},
        markdownCode {fg = c.green},
        markdownCodeBlock {fg = c.green},
        markdownCodeDelimiter {fg = c.green},
        markdownH1 {fg = c.blue},
        markdownH2 {fg = c.blue},
        markdownH3 {fg = c.blue},
        markdownH4 {fg = c.blue},
        markdownH5 {fg = c.blue},
        markdownH6 {fg = c.blue},
        markdownHeadingDelimiter {fg = c.red},
        markdownHeadingRule {fg = c.line_grey},
        markdownId {fg = c.purple},
        markdownIdDeclaration {fg = c.blue},
        markdownIdDelimiter {fg = c.purple},
        markdownItalic {fg = c.purple, gui = "italic"},
        markdownLinkDelimiter {fg = c.purple},
        markdownLinkText {fg = c.blue},
        markdownListMarker {fg = c.red},
        markdownOrderedListMarker {fg = c.red},
        markdownRule {fg = c.line_grey},
        markdownUrl {fg = c.cyan, gui = "underline"},
        -- END markdown (keep consistent with HTML, above)

        -- START vimwiki 
        VimwikiHeader1 {fg = c.orange, gui = "bold"},
        VimwikiHeader2 {fg = c.green, gui = "bold"},
        VimwikiHeader3 {fg = c.blue, gui = "bold"},
        VimwikiHeader4 {fg = c.cyan, gui = "bold"},
        VimwikiHeader5 {fg = c.dark_yellow, gui = "bold"},
        VimwikiHeader6 {fg = c.purple, gui = "bold"},
        VimwikiLink {fg = c.vivid_blue},
        VimwikiHeaderChar {fg = c.line_grey},
        VimwikiHR {fg = c.yellow},
        VimwikiList {fg = c.orange},
        VimwikiTag {fg = c.orange},
        VimwikiMarkers {fg = c.line_grey},
        -- END vimwiki 
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
