:au BufWinEnter *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java let w:m1=matchadd('Search', '\%<81v.\%>79v', -1)
:au BufWinEnter *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

autocmd BufWrite *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java :call DeleteTrailingWS()
autocmd BufRead,BufNewFile *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java highlight TrailingWhitespace ctermbg=red guibg=red

au FileType python inoremap # X<BS>#

"Vim GPG plugin
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["abnerf@gmail.com"]

call pathogen#infect('~/.vim/bundle/{}')
call pathogen#helptags()

" Jedi plugin prefs
let g:jedi#show_call_signatures = 1
let g:jedi#popup_on_dot = 1
let g:jedi#auto_close_doc = 1
autocmd FileType python setlocal completeopt-=preview

" Airline was deprecated by Lightline - Keeping it for future reference
" Airline plugin with nice symbols
" let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  hi CursorLine   ctermfg=NONE ctermbg=236  cterm=NONE
  hi CursorLineNr ctermfg=117  ctermbg=NONE cterm=NONE
  hi CursorLine term=bold cterm=bold guibg=Grey20 gui=NONE
  au WinLeave * setlocal nocursorline
augroup END
