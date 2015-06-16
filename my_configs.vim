imap jk <ESC>
nmap ; :
map <F7> mzgg=G`z
map <leader>cd :cd 
try
    colorscheme slate
catch
endtry

set tw=120
" Disable highlight when <leader>/ is pressed
map <silent> <leader>/ :noh<cr>
map <leader>v :vsplit<cr>
map <leader>s :split<cr>
autocmd BufWrite *.go :call DeleteTrailingWS()
