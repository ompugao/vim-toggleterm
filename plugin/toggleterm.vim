if exists('g:loaded_toggleterm_vim')
  finish
endif
let g:loaded_toggleterm_vim = 1

command! ToggleTerm call toggleterm#toggle()
nnoremap <silent> <Plug>(toggleterm-toggle) <cmd>:ToggleTerm<CR>
inoremap <silent> <Plug>(toggleterm-toggle) <cmd>:ToggleTerm<CR>
tnoremap <silent> <Plug>(toggleterm-toggle) <cmd>:ToggleTerm<CR>
