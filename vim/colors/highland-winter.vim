if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "highland-winter"
set background=light

let s:highland_winter_0_gui = "#FAFAFA"
let s:highland_winter_1_gui = "#F4F4F5"
let s:highland_winter_2_gui = "#EFEFF1"
let s:highland_winter_3_gui = "#E9E9EC"
let s:highland_winter_4_gui = "#484851"
let s:highland_winter_5_gui = "#3C3C44"
let s:highland_winter_6_gui = "#303036"
let s:highland_winter_7_gui = "#459B9F"
let s:highland_winter_8_gui = "#99D8D9"
let s:highland_winter_9_gui = "#0099C9"
let s:highland_winter_10_gui = "#5C6F95"
let s:highland_winter_11_gui = "#BC4E4C"
let s:highland_winter_12_gui = "#E9844A"
let s:highland_winter_13_gui = "#F5B54F"
let s:highland_winter_14_gui = "#3C8E5C"
let s:highland_winter_15_gui = "#B4A7C1"

let s:highland_winter_1_term = "0"
let s:highland_winter_3_term = "8"
let s:highland_winter_5_term = "7"
let s:highland_winter_6_term = "15"
let s:highland_winter_7_term = "14"
let s:highland_winter_8_term = "6"
let s:highland_winter_9_term = "4"
let s:highland_winter_10_term = "12"
let s:highland_winter_11_term = "1"
let s:highland_winter_12_term = "11"
let s:highland_winter_13_term = "3"
let s:highland_winter_14_term = "2"
let s:highland_winter_15_term = "5"

let s:highland_winter_3_gui_brightened = [
  \ s:highland_winter_3_gui,
  \ "#4e586d",
  \ "#505b70",
  \ "#525d73",
  \ "#556076",
  \ "#576279",
  \ "#59647c",
  \ "#5b677f",
  \ "#5d6982",
  \ "#5f6c85",
  \ "#616e88",
  \ "#63718b",
  \ "#66738e",
  \ "#687591",
  \ "#6a7894",
  \ "#6d7a96",
  \ "#6f7d98",
  \ "#72809a",
  \ "#75829c",
  \ "#78859e",
  \ "#7b88a1",
\ ]

if !exists("g:highland_winter__italic")
  if has("gui_running") || $TERM_ITALICS == "true"
    let g:highland_winter__italic=1
  else
    let g:highland_winter__italic=0
  endif
endif

let s:italic = "italic,"
if g:highland_winter__italic == 0
  let s:italic = ""
endif

let s:underline = "underline,"
if ! get(g:, "highland_winter__underline", 1)
  let s:underline = "NONE,"
endif

let s:italicize_comments = ""
if exists("g:highland_winter__italic_comments")
  if g:highland_winter__italic_comments == 1
    let s:italicize_comments = s:italic
  endif
endif

if !exists('g:highland_winter__uniform_status_lines')
  let g:highland_winter__uniform_status_lines = 0
endif

if !exists("g:highland_winter__comment_brightness")
  let g:highland_winter__comment_brightness = 0
endif

if !exists("g:highland_winter__uniform_diff_background")
  let g:highland_winter__uniform_diff_background = 0
endif

if !exists("g:highland_winter__cursor_line_number_background")
  let g:highland_winter__cursor_line_number_background = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "", "")
call s:hi("Cursor", s:highland_winter_0_gui, s:highland_winter_4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "NONE", "")
call s:hi("Error", s:highland_winter_0_gui, s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "")
call s:hi("iCursor", s:highland_winter_0_gui, s:highland_winter_4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:highland_winter_3_gui, s:highland_winter_0_gui, s:highland_winter_3_term, "NONE", "", "")
call s:hi("MatchParen", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "", "")
call s:hi("NonText", s:highland_winter_2_gui, "", s:highland_winter_3_term, "", "", "")
call s:hi("Normal", s:highland_winter_4_gui, s:highland_winter_0_gui, "NONE", "NONE", "", "")
call s:hi("PMenu", s:highland_winter_4_gui, s:highland_winter_2_gui, "NONE", s:highland_winter_1_term, "NONE", "")
call s:hi("PmenuSbar", s:highland_winter_4_gui, s:highland_winter_2_gui, "NONE", s:highland_winter_1_term, "", "")
call s:hi("PMenuSel", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "", "")
call s:hi("PmenuThumb", s:highland_winter_8_gui, s:highland_winter_3_gui, "NONE", s:highland_winter_3_term, "", "")
call s:hi("SpecialKey", s:highland_winter_3_gui, "", s:highland_winter_3_term, "", "", "")
call s:hi("SpellBad", s:highland_winter_11_gui, s:highland_winter_0_gui, s:highland_winter_11_term, "NONE", "undercurl", s:highland_winter_11_gui)
call s:hi("SpellCap", s:highland_winter_13_gui, s:highland_winter_0_gui, s:highland_winter_13_term, "NONE", "undercurl", s:highland_winter_13_gui)
call s:hi("SpellLocal", s:highland_winter_5_gui, s:highland_winter_0_gui, s:highland_winter_5_term, "NONE", "undercurl", s:highland_winter_5_gui)
call s:hi("SpellRare", s:highland_winter_6_gui, s:highland_winter_0_gui, s:highland_winter_6_term, "NONE", "undercurl", s:highland_winter_6_gui)
call s:hi("Visual", "", s:highland_winter_2_gui, "", s:highland_winter_1_term, "", "")
call s:hi("VisualNOS", "", s:highland_winter_2_gui, "", s:highland_winter_1_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:highland_winter_11_gui, s:highland_winter_1_gui, s:highland_winter_11_term, s:highland_winter_1_term, "", "")
call s:hi("healthSuccess", s:highland_winter_14_gui, s:highland_winter_1_gui, s:highland_winter_14_term, s:highland_winter_1_term, "", "")
call s:hi("healthWarning", s:highland_winter_13_gui, s:highland_winter_1_gui, s:highland_winter_13_term, s:highland_winter_1_term, "", "")
call s:hi("TermCursorNC", "", s:highland_winter_1_gui, "", s:highland_winter_1_term, "", "")

"+- Neovim Terminal Colors -+
if has('nvim')
  let g:terminal_color_0 = s:highland_winter_1_gui
  let g:terminal_color_1 = s:highland_winter_11_gui
  let g:terminal_color_2 = s:highland_winter_14_gui
  let g:terminal_color_3 = s:highland_winter_13_gui
  let g:terminal_color_4 = s:highland_winter_9_gui
  let g:terminal_color_5 = s:highland_winter_15_gui
  let g:terminal_color_6 = s:highland_winter_8_gui
  let g:terminal_color_7 = s:highland_winter_5_gui
  let g:terminal_color_8 = s:highland_winter_3_gui
  let g:terminal_color_9 = s:highland_winter_11_gui
  let g:terminal_color_10 = s:highland_winter_14_gui
  let g:terminal_color_11 = s:highland_winter_13_gui
  let g:terminal_color_12 = s:highland_winter_9_gui
  let g:terminal_color_13 = s:highland_winter_15_gui
  let g:terminal_color_14 = s:highland_winter_7_gui
  let g:terminal_color_15 = s:highland_winter_6_gui
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "", "")
if g:highland_winter__cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:highland_winter_4_gui, s:highland_winter_0_gui, "NONE", "", "", "")
else
  call s:hi("CursorLineNr", s:highland_winter_4_gui, s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "", "")
endif
call s:hi("Folded", s:highland_winter_3_gui, s:highland_winter_1_gui, s:highland_winter_3_term, s:highland_winter_1_term, "bold", "")
call s:hi("FoldColumn", s:highland_winter_3_gui, s:highland_winter_0_gui, s:highland_winter_3_term, "NONE", "", "")
call s:hi("SignColumn", s:highland_winter_1_gui, s:highland_winter_0_gui, s:highland_winter_1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:highland_winter_8_gui, "", s:highland_winter_8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:highland_winter_1_gui, "", s:highland_winter_1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:highland_winter_4_gui, s:highland_winter_11_gui, "NONE", s:highland_winter_11_term, "", "")
call s:hi("ModeMsg", s:highland_winter_4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:highland_winter_4_gui, "", "", "", "", "")
call s:hi("Question", s:highland_winter_4_gui, "", "NONE", "", "", "")
if g:highland_winter__uniform_status_lines == 0
  call s:hi("StatusLine", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "NONE", "")
  call s:hi("StatusLineNC", s:highland_winter_4_gui, s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "NONE", "")
  call s:hi("StatusLineTerm", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:highland_winter_4_gui, s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "NONE", "")
else
  call s:hi("StatusLine", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "NONE", "")
  call s:hi("StatusLineNC", s:highland_winter_4_gui, s:highland_winter_3_gui, "NONE", s:highland_winter_3_term, "NONE", "")
  call s:hi("StatusLineTerm", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:highland_winter_4_gui, s:highland_winter_3_gui, "NONE", s:highland_winter_3_term, "NONE", "")
endif
call s:hi("WarningMsg", s:highland_winter_0_gui, s:highland_winter_13_gui, s:highland_winter_1_term, s:highland_winter_13_term, "", "")
call s:hi("WildMenu", s:highland_winter_8_gui, s:highland_winter_1_gui, s:highland_winter_8_term, s:highland_winter_1_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:highland_winter_1_gui, s:highland_winter_8_gui, s:highland_winter_1_term, s:highland_winter_8_term, s:underline, "")
call s:hi("Search", s:highland_winter_1_gui, s:highland_winter_8_gui, s:highland_winter_1_term, s:highland_winter_8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:highland_winter_4_gui, s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "NONE", "")
call s:hi("TabLineFill", s:highland_winter_4_gui, s:highland_winter_1_gui, "NONE", s:highland_winter_1_term, "NONE", "")
call s:hi("TabLineSel", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:highland_winter_4_gui, "", "NONE", "", "NONE", "")
call s:hi("VertSplit", s:highland_winter_2_gui, s:highland_winter_1_gui, s:highland_winter_3_term, s:highland_winter_1_term, "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Character", s:highland_winter_14_gui, "", s:highland_winter_14_term, "", "", "")
call s:hi("Comment", s:highland_winter_3_gui_brightened[g:highland_winter__comment_brightness], "", s:highland_winter_3_term, "", s:italicize_comments, "")
call s:hi("Conditional", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Constant", s:highland_winter_4_gui, "", "NONE", "", "", "")
call s:hi("Define", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Delimiter", s:highland_winter_6_gui, "", s:highland_winter_6_term, "", "", "")
call s:hi("Exception", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Float", s:highland_winter_15_gui, "", s:highland_winter_15_term, "", "", "")
call s:hi("Function", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")
call s:hi("Identifier", s:highland_winter_4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Keyword", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Label", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Number", s:highland_winter_15_gui, "", s:highland_winter_15_term, "", "", "")
call s:hi("Operator", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "NONE", "")
call s:hi("PreProc", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "NONE", "")
call s:hi("Repeat", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Special", s:highland_winter_4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:highland_winter_13_gui, "", s:highland_winter_13_term, "", "", "")
call s:hi("SpecialComment", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", s:italicize_comments, "")
call s:hi("Statement", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("StorageClass", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("String", s:highland_winter_14_gui, "", s:highland_winter_14_term, "", "", "")
call s:hi("Structure", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
call s:hi("Tag", s:highland_winter_4_gui, "", "", "", "", "")
call s:hi("Todo", s:highland_winter_13_gui, "NONE", s:highland_winter_13_term, "NONE", "", "")
call s:hi("Type", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "NONE", "")
call s:hi("Typedef", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("awkCharClass", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("awkPatterns", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "bold", "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("cssDefinition", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", s:underline, "")
call s:hi("cssStringQ", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("dtExecKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("dtLocaleKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("dtNumericKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("dtTypeKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:highland_winter__uniform_diff_background == 0
  call s:hi("DiffAdd", s:highland_winter_14_gui, s:highland_winter_0_gui, s:highland_winter_14_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:highland_winter_13_gui, s:highland_winter_0_gui, s:highland_winter_13_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:highland_winter_11_gui, s:highland_winter_0_gui, s:highland_winter_11_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:highland_winter_9_gui, s:highland_winter_0_gui, s:highland_winter_9_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:highland_winter_14_gui, s:highland_winter_1_gui, s:highland_winter_14_term, s:highland_winter_1_term, "", "")
  call s:hi("DiffChange", s:highland_winter_13_gui, s:highland_winter_1_gui, s:highland_winter_13_term, s:highland_winter_1_term, "", "")
  call s:hi("DiffDelete", s:highland_winter_11_gui, s:highland_winter_1_gui, s:highland_winter_11_term, s:highland_winter_1_term, "", "")
  call s:hi("DiffText", s:highland_winter_9_gui, s:highland_winter_1_gui, s:highland_winter_9_term, s:highland_winter_1_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")

call s:hi("goBuiltins", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:highland_winter_3_gui, "", s:highland_winter_3_term, "", "", "")
call s:hi("helpHyperTextJump", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", s:underline, "")

call s:hi("htmlArg", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("htmlLink", s:highland_winter_4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")

call s:hi("lessClass", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownCode", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownFootnote", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownId", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("markdownH1", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")
call s:hi("markdownLinkText", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")
call s:hi("markdownUrl", s:highland_winter_4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")

call s:hi("phpClasses", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("phpDocTags", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("podVerbatimLine", s:highland_winter_4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("rubySymbol", s:highland_winter_6_gui, "", s:highland_winter_6_term, "", "bold", "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("sassClass", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("sassId", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("vimMapRhs", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("vimNotation", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("xmlCdataStart", s:highland_winter_3_gui, "", s:highland_winter_3_term, "", "bold", "")
call s:hi("xmlNamespace", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:highland_winter_13_gui, "", s:highland_winter_13_term, "", "", "")
call s:hi("ALEErrorSign" , s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:highland_winter_14_gui, "", s:highland_winter_14_term, "", "", "")
call s:hi("GitGutterChange", s:highland_winter_13_gui, "", s:highland_winter_13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")
call s:hi("GitGutterDelete", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:highland_winter_14_gui, "", s:highland_winter_14_term, "", "", "")
call s:hi("SignifySignChange", s:highland_winter_13_gui, "", s:highland_winter_13_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")
call s:hi("SignifySignDelete", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:highland_winter_11_gui, "", s:highland_winter_11_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:highland_winter_14_gui, "", s:highland_winter_14_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:highland_winter_4_gui, s:highland_winter_3_gui, "", s:highland_winter_3_term, "", "")
call s:hi("jediFat", s:highland_winter_8_gui, s:highland_winter_3_gui, s:highland_winter_8_term, s:highland_winter_3_term, s:underline."bold", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:highland_winter_11_gui, "", "", s:highland_winter_11_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
call s:hi("mkdFootnote", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "", "")
call s:hi("mkdRule", s:highland_winter_10_gui, "", s:highland_winter_10_term, "", "", "")
call s:hi("mkdLineBreak", s:highland_winter_9_gui, "", s:highland_winter_9_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:highland_winter_8_gui, "", s:highland_winter_8_term, "", "bold", "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:highland_winter_7_gui, s:highland_winter_8_gui, s:highland_winter_9_gui, s:highland_winter_10_gui, s:highland_winter_14_gui, s:highland_winter_15_gui]
  let s:vimwiki_hcolor_ctermfg = [s:highland_winter_7_term, s:highland_winter_8_term, s:highland_winter_9_term, s:highland_winter_10_term, s:highland_winter_14_term, s:highland_winter_15_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", "bold", "")
  endfor
endif

call s:hi("VimwikiLink", s:highland_winter_8_gui, "", s:highland_winter_8_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:highland_winter_7_gui, "", s:highland_winter_7_term, "", "", "")
