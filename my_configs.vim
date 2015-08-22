imap jk <esc>
nmap ; :
nmap <leader>d :e .<cr>

nmap <leader>% :source %<cr>
map <leader>h :split
map <leader>v :vsplit

map g<F1> :GoDoc 
map <F2> :GoBuild
map <F3> :GoTest
"set shell=zsh\ -i
map <F4> :shell<CR>
map <F5> :source %<CR>
"set up tags file
map <F6> :!ctags -R .
"reindent file
map <F7> mzgg=G`z
"reflow paragraph
map <F8> gqap

map <leader>/ :set hlsearch!<CR>

try
    colorscheme delek
endtry

nmap imp iimport<SPACE>"
nmap qqq :quitall<CR>

set complete+=k
set complete+=t

nnoremap <F12>c :exe ':silent !chromium-browser %'<CR>
set tw=120
autocmd BufWrite *.go :call DeleteTrailingWS()
"Syntastic settings for linting and checking
" if python3 is not used to check python files
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0let g:syntastic_python_python_exec = '/path/to/python3'
let g:syntastic_python_checkers = ['pylama', 'pylint']
