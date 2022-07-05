lua require('init')

let g:lightline = { 'colorscheme': 'onehalfdark' }
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1

hi default CocRustTypeHint guifg=#3e4148
hi CursorLine guibg=#2c313c
hi CocErrorSign guifg=#FF6464 guibg=#382c32
hi CocErrorLine guibg=#382c32
hi CocHintSign guifg=#FA973A guibg=#403733
hi CocHintLine guibg=#403733

" Disable arrow keys to break the habit of using them instead of hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
