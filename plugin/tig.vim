if has('nvim')
  if !exists('g:tig_executable')
    let g:tig_executable = 'tig'
  endif

  if !exists('g:tig_command')
    let g:tig_command = 'status'
  endif

  if !exists('g:tig_on_exit')
    let g:tig_on_exit = 'bw!'
  endif

  function! Tig()
    let callback = {}

    function! callback.on_exit()
      exec g:tig_on_exit
    endfunction

    new
    call termopen(g:tig_executable . ' ' . g:tig_command, callback)
    startinsert
  endfunction

  command! Tig call Tig()
endif
