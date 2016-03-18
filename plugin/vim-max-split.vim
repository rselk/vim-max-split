nnoremap <silent> <C-W>m :call MaximizeToggle()<CR>
nnoremap <silent> <C-W>= :call ResetStateCallEqual()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exe "normal! \<C-W>="
    if exists('$TMUX')
      call system("tmux resize-pane -Z")
    endif
    unlet s:maximize_session
  else
    exe "normal! \<C-W>_\<C-W>|"
    if exists('$TMUX')
      call system("tmux resize-pane -Z")
    endif
    let s:maximize_session = "active"
  endif
endfunction

function! ResetStateCallEqual()
  if exists("s:maximize_session")
    exe "normal! \<C-W>="
    if exists('$TMUX')
      call system("tmux resize-pane -Z")
    endif
    unlet s:maximize_session
  else
    if exists('$TMUX')
      call system("tmux resize-pane -Z")
    exe "normal! \<C-W>="
  endif
endfunction
