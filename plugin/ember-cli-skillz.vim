function! GenerateRoute(...)
  execute "silent !ember generate route " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateTemplate(...)
  execute "silent !ember generate template " . join(a:000, ' ')
  redraw!
endfunction


function! InstallAddon(...)
  execute "silent !ember install " . join(a:000, ' ')
  redraw!
endfunction

command! -nargs=* EmberGenerateRoute call GenerateRoute(<f-args>)
command! -nargs=* EmberGenerateTemplate call GenerateTemplate(<f-args>)
command! -nargs=* EmberInstallAddon call InstallAddon(<f-args>)
