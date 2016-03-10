if has('nvim')
  function! Tig()
    let callback = {}

    function! callback.on_exit()
      exec 'bw!'
    endfunction

    new
    call termopen('tig status', callback)
    startinsert
  endfunction

  command! Tig call Tig()
endif
