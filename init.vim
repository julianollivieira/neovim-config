lua require('init')

let g:lightline = { 'colorscheme': 'onehalfdark' }
let g:lightline = {
	\ 'colorscheme': 'onehalfdark',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

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

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

 " Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "<cmd>call smoothie#do('\<C-d>') <CR>"
nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "<cmd>call smoothie#do('\<C-u>') <CR>"
inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "<cmd>call smoothie#do('\<C-d>') <CR>"
vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "<cmd>call smoothie#do('\<C-u>') <CR>"

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
