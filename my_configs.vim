:au BufWinEnter *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java let w:m1=matchadd('Search', '\%<81v.\%>79v', -1)
:au BufWinEnter *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

autocmd BufWrite *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java :call DeleteTrailingWS()
autocmd BufRead,BufNewFile *.c,*.cpp,*.cc,*.py,*.pl,*.js,*.am,*.java highlight TrailingWhitespace ctermbg=red guibg=red

au FileType python inoremap # X<BS>#

"Vim GPG plugin
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["abnerf@gmail.com"]
