function! GenerateRoute(...)
  execute "silent !ember generate route " . join(a:000, ' ')
  redraw!
endfunction

command! -nargs=* EmberGenerateRoute call GenerateComponent(<f-args>)
