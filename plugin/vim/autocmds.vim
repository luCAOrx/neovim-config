function! HighlightWordUnderCursor()
  if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
      exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
  else
      match none
  endif
endfunction

autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

autocmd VimLeave * mksession! ./Session.vim

" Automatically save file
autocmd InsertLeave * silent write
