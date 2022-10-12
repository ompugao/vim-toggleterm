let s:termname = 'toggleterm'

function! s:open(buf) abort
  botright split
  if a:buf > 0
    exec 'buffer ' . s:termname
	"call feedkeys('i')
  else
    terminal ++curwin
    startinsert
    exe 'file ' . s:termname
    setl nobuflisted
  endif
endfunction

function! s:close(pane) abort
  exe a:pane . 'wincmd c'
endfunction

function! toggleterm#toggle() abort
  let pane = bufwinnr(s:termname)
  let buf = bufexists(s:termname)
  if pane > 0
    call s:close(pane)
  else
    call s:open(buf)
  endif
endfunction
