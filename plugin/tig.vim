if has('nvim')
  if !exists('g:tig_command')
    let g:tig_command = 'status'
  endif

  function! Tig()
    let callback = {}

    function! callback.on_exit()
      exec 'bw!'
    endfunction

    new
    call termopen('tig ' . g:tig_command, callback)
    startinsert
  endfunction

  command! Tig call Tig()
endif
