" Vim color file
" Author: e2.718281828.nop3@gmail.com
" https://github.com/e2718281828nop3/basic.color.vim
" Last Change:  2017 Dec 24

set background=dark
"set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "2718281828"

let s:fg_color = 238
let s:bg_color = 230
let s:hi_color = 210

"tab color
function! SetTabColor() abort
    exec printf('hi Tabline term=None cterm=None ctermfg=%s ctermbg=%s', s:fg_color, s:bg_color)
    exec printf('hi TablineSel ctermfg=%s ctermbg=%s', s:hi_color, s:bg_color)
    exec printf('hi TablineFill term=None cterm=None ctermbg=%s', s:bg_color)
endfunction
call SetTabColor()

"line color
function! SetLineColor() abort
    exec printf('hi LineNr ctermfg=%s ctermbg=%s', s:bg_color, s:fg_color)
    exec printf('hi CursorLineNr ctermfg=%s ctermbg=%s', s:hi_color, s:fg_color)
endfunction
call SetLineColor()

"colors for status lines
hi StlBase ctermfg=238 ctermbg=230
hi Git ctermfg=238 ctermbg=230
hi GitBranch ctermfg=238 ctermbg=230
hi GitMasterBranch ctermfg=Red ctermbg=230
hi File ctermfg=238 ctermbg=230
hi Important ctermfg=White ctermbg=Red
hi ALEError ctermfg=White ctermbg=Red
hi ALEStyleError ctermfg=White ctermbg=DarkRed
hi ALEWarning ctermfg=238 ctermbg=Yellow
hi ALEStyleWarning ctermfg=White ctermbg=DarkYellow
hi ALEInfo ctermfg=White ctermbg=Darkblue
hi STL_Insert ctermfg=White ctermbg=33
hi STL_Visual ctermfg=White ctermbg=125

"others
hi Normal guibg=#3f1f1f guifg=PapayaWhip ctermfg=250
hi DiffDelete guibg=DarkRed guifg=White ctermbg=DarkRed ctermfg=250
hi DiffAdd guibg=DarkGreen guifg=White ctermbg=DarkGreen ctermfg=250
hi DiffText gui=NONE guibg=DarkCyan guifg=Yellow ctermbg=DarkCyan ctermfg=Yellow
hi DiffChange guibg=DarkCyan guifg=White ctermbg=DarkCyan ctermfg=250
hi Constant ctermfg=Red
hi Comment guifg=LightBlue3 ctermfg=238
hi PreProc guifg=Plum ctermfg=Magenta
hi StatusLine guibg=White guifg=Sienna4 cterm=NONE ctermfg=238 ctermbg=230
hi StatusLineNC gui=NONE guifg=Black guibg=Gray ctermbg=Black ctermfg=Gray
hi VertSplit guifg=Gray
hi Search guibg=Gold3 ctermfg=Blue
hi Type gui=NONE guifg=DarkSeaGreen2
hi Special term=bold ctermfg=27 guifg=Orange
hi Statement gui=NONE guifg=Gold3 ctermfg=186
hi Number ctermfg=2
hi Float ctermfg=2
hi Boolean ctermfg=130
hi Function ctermfg=39
hi Keyword ctermfg=4
hi Conditional ctermfg=105
hi FoldColumn guibg=#1f0f0f ctermfg=Cyan ctermbg=Black
hi Folded guibg=grey20 ctermfg=Cyan ctermbg=Black
hi CursorLine term=None cterm=None ctermbg=233
hi NonText term=None ctermfg=237 ctermbg=0 gui=bold guifg=Brown2 guibg=#1f0f0f
hi SpecialKey ctermfg=237 ctermbg=237
hi Pmenu ctermfg=Cyan ctermbg=Blue cterm=None guifg=Cyan guibg=DarkBlue
hi PmenuSel ctermfg=Blue ctermbg=Cyan cterm=Bold guifg=White guibg=DarkBlue
hi PmenuSbar ctermbg=Cyan guibg=Cyan
hi PmenuThumb ctermfg=White guifg=White
