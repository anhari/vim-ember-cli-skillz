function! s:InitVariable(var, value)
  if !exists(a:var)
    let escaped_value = substitute(a:value, "'", "''", "g")
    exec 'let ' . a:var . ' = ' . "'" . escaped_value . "'"
    return 1
  endif
  return 0
endfunction

function! GenerateAdapter(...)
  execute "silent !ember generate adapter " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateComponent(...)
  execute "silent !ember generate component " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateHelper(...)
  execute "silent !ember generate helper " . join(a:000, ' ')
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

function! s:InitializeVariables()
  call s:InitVariable("g:EmberCliSkillzUseMaps", 0)
endfunction

function! s:DefineCommands()
  command! -nargs=* EmberGenerateAdapter call GenerateAdapter(<f-args>)
  command! -nargs=* EmberGenerateComponent call GenerateComponent(<f-args>)
  command! -nargs=* EmberGenerateHelper call GenerateHelper(<f-args>)
  command! -nargs=* EmberGenerateModel call GenerateModel(<f-args>)
  command! -nargs=* EmberGenerateRoute call GenerateRoute(<f-args>)
  command! -nargs=* EmberGenerateTemplate call GenerateTemplate(<f-args>)
  command! -nargs=* EmberInstallAddon call InstallAddon(<f-args>)
endfunction

function! s:DefineKeyMaps()
  if g:EmberCliSkillzUseMaps
    nnoremap <leader>ema :EmberGenerateAdapter<space>
    nnoremap <leader>emc :EmberGenerateComponent<space>
    nnoremap <leader>emh :EmberGenerateHelper<space>
    nnoremap <leader>emm :EmberGenerateModel<space>
    nnoremap <leader>emr :EmberGenerateRoute<space>
    nnoremap <leader>emt :EmberGenerateTemplate<space>
    nnoremap <leader>emi :EmberInstallAddon<space>
  endif
endfunction

call s:InitializeVariables()
call s:DefineCommands()
call s:DefineKeyMaps()
