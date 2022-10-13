function! HighlightWordUnderCursor()
  if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
      exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
  else
      match none
  endif
endfunction

function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

call Multiple_cursors_before()
call Multiple_cursors_after()

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" Automatically save the session when leaving Vim
autocmd! VimLeave * mksession!

" Automatically load the session when entering vim
autocmd! VimEnter * source Session.vim
