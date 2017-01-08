" Look at color table for xterm
" https://github.com/guns/xterm-color-table.vim

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "baguette"

hi Normal term=NONE cterm=NONE ctermbg=232 ctermfg=231 gui=NONE guibg=#1D1F21 guifg=#F8F8F2
hi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#99CC99
hi Special term=bold cterm=NONE ctermbg=bg ctermfg=158 gui=NONE guibg=bg guifg=#99CC99

hi Character term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#A8FF60
hi ColorColumn term=reverse cterm=NONE ctermbg=235 ctermfg=160 gui=NONE guibg=lightgray guifg=fg
hi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
hi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
hi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
hi Constant term=underline cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#99CC99
hi Cursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
hi CursorColumn term=reverse cterm=NONE ctermbg=23 ctermfg=fg gui=NONE guibg=#293739 guifg=fg
hi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB

hi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#BCA3A3
hi Define term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#66D9EF
hi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8F8F8F
hi Directory term=bold cterm=NONE ctermbg=bg ctermfg=248 gui=NONE guibg=bg guifg=#AAAAAA
hi Error term=reverse cterm=NONE ctermbg=16 ctermfg=155 gui=NONE guibg=#1E0010 guifg=#A8FF60

hi ErrorMsg term=NONE cterm=NONE ctermbg=235 ctermfg=117 gui=NONE guibg=#232526 guifg=#92C5F7
hi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085

hi Float term=NONE cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99

" goStruct       xxx links to Function
" goStructDef    xxx links to Function
" goInterface    xxx links to Function
" goInterfaceDef xxx links to Function
" hi Function term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#DAD085

hi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
hi Ignore term=NONE cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=bg guifg=#808080
hi IncSearch term=reverse cterm=reverse ctermbg=180 ctermfg=16 gui=reverse guibg=#000000 guifg=#C4BE89

" goDeclaration  xxx links to Keyword
" goDeclType     xxx links to Keyword
" goBuiltins     xxx links to Keyword
hi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=119 gui=NONE guibg=bg guifg=#92C5F7

hi Label term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#A8FF60
hi LineNr term=underline cterm=NONE ctermbg=232 ctermfg=59 gui=NONE guibg=#232526 guifg=#465457

hi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#C4BE89
hi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=155 gui=bold guibg=bg guifg=#A8FF60

hi NonText term=bold cterm=bold ctermbg=bg ctermfg=59 gui=bold guibg=bg guifg=#465457
hi Number term=NONE cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99

hi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7

hi PmenuSbar term=NONE cterm=NONE ctermbg=232 ctermfg=fg gui=NONE guibg=#080808 guifg=fg
hi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085
hi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085

hi Question term=NONE cterm=bold ctermbg=bg ctermfg=81 gui=bold guibg=bg guifg=#66D9EF

hi Search term=reverse cterm=NONE ctermbg=156 ctermfg=16 gui=NONE guibg=#B4EC85 guifg=#000000
hi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
hi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
hi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#465457
hi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#FF0000
hi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=63 gui=undercurl guibg=bg guifg=fg guisp=#7070F0
hi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=87 gui=undercurl guibg=bg guifg=fg guisp=#70F0F0
hi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=231 gui=undercurl guibg=bg guifg=fg guisp=#FFFFFF
hi Statement term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
hi StatusLine term=bold,reverse cterm=NONE ctermbg=231 ctermfg=59 gui=NONE guibg=fg guifg=#455354
hi StatusLineNC term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
hi String term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#A8FF60
hi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#66D9EF

hi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=#1D1F21 guifg=#808080
hi TabLineFill term=reverse cterm=reverse ctermbg=234 ctermfg=234 gui=reverse guibg=#1D1F21 guifg=#1D1F21
hi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
hi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
hi Title term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
hi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=bg guifg=#FFFFFF
hi Type term=underline cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#66D9EF
hi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#66D9EF

hi Underlined term=underline cterm=underline ctermbg=bg ctermfg=244 gui=underline guibg=bg guifg=#808080

hi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
hi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#403D3D guifg=fg
hi VisualNOS term=NONE cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#403D3D guifg=fg

hi WarningMsg term=NONE cterm=NONE ctermbg=236 ctermfg=231 gui=NONE guibg=#333333 guifg=#FFFFFF
hi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#000000 guifg=#66D9EF

