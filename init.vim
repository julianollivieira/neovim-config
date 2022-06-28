lua require('init')

let g:lightline = { 'colorscheme': 'onehalfdark' }
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1

hi default CocRustTypeHint guifg=#3e4148
hi CursorLine guibg=#2c313c

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
