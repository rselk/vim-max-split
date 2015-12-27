nnoremap <silent> <C-W>m :call MaximizeToggle()<CR>
nnoremap <silent> <C-W>= :call ResetStateCallEqual()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exe "normal! \<C-W>="
    unlet s:maximize_session
  else
    exe "normal! \<C-W>_\<C-W>|"
    let s:maximize_session = "active"
  endif
endfunction

function! ResetStateCallEqual()
  if exists("s:maximize_session")
    exe "normal! \<C-W>="
    unlet s:maximize_session
  else
    exe "normal! \<C-W>="
  endif
endfunction
