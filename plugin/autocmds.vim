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

autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

autocmd VimLeave * mksession! ./Session.vim

" Automatically save file
autocmd InsertLeave * silent write
