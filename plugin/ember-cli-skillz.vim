function! GenerateAdapter(...)
  execute "silent !ember generate adapter " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateComponent(...)
  execute "silent !ember generate component " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateModel(...)
  execute "silent !ember generate model " . join(a:000, ' ')
  redraw!
endfunction

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

command! -nargs=* EmberGenerateAdapter call GenerateAdapter(<f-args>)
command! -nargs=* EmberGenerateComponent call GenerateComponent(<f-args>)
command! -nargs=* EmberGenerateModel call GenerateModel(<f-args>)
command! -nargs=* EmberGenerateRoute call GenerateRoute(<f-args>)
command! -nargs=* EmberGenerateTemplate call GenerateTemplate(<f-args>)
command! -nargs=* EmberInstallAddon call InstallAddon(<f-args>)
