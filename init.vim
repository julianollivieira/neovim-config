lua require('init')

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:lightline = { 'colorscheme': 'onehalfdark' }
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1

autocmd FileType * RainbowParentheses