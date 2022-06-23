lua require('init')

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:lightline = { 'colorscheme': 'onehalfdark' }

autocmd FileType * RainbowParentheses