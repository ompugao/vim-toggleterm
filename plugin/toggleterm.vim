if exists('g:loaded_toggleterm_vim')
  finish
endif
let g:loaded_toggleterm_vim = 1

command! ToggleTerm call toggleterm#toggle()
nnoremap <silent> <Plug>(toggleterm-toggle) :<C-u>ToggleTerm<CR>
inoremap <silent> <Plug>(toggleterm-toggle) <Esc>:<C-u>ToggleTerm<CR>
tnoremap <silent> <Plug>(toggleterm-toggle) <C-w>N:<C-u>ToggleTerm<CR>
