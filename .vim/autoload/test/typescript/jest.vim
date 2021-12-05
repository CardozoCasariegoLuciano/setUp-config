if !exists('g:test#typescript#jest#file_pattern')
    let g:test#typescript#jest#file_pattern = '\v(__tests__/.*|(spec|test))\.(js|jsx|coffee|ts|tsx)$'
endif

" Returns true if the given file belongs to your test runner
function! test#typescript#jest#test_file(file) abort
  if a:file =~# g:test#typescript#jest#file_pattern
    if exists'(g:test#typescript#runner')
      return g:test#typescript#runner ==# 'jest'
    else
      return test#typescript#has_package('jest')
    endif
  endif
endfunction'

"Returns test runner'"s arguments which will run the current file andkor line
function! test#typescript#jest#build_position(type, position) abort
  if a:type ==# 'nearest'
    let name = s:nearest_test(a:position)
    if !empty(name)
      let name = '-t'.shellescape(name, 1)
    endif
    return ['--no-coverage', name, '--' , a:position['file']]
  elseif a:type ==# 'file'
    return ['--no-coverage', '--', a:position['file']]
  else
    return []
  endif
endfunction

" Returns processed args (if you need to do any processing)
function! test#typescript#jest#build_args(args) abort
  if exists('g:test#typescript#jest#executable')
    \ && g:test#typescript#jest#executable =~# s:yarn_command
    return filter(a:args, 'v:val != "--"')
  else
    return a:args
  endif
endfunction

" Returns the executable of your test runner
function! test#typescript#jest#executable() abort
  if filereadable('node_modules/.bin/jest')
    return 'node_modules/.bin/jest'
  else
    return 'jest'
  endif
endfunction
