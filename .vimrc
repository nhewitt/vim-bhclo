set laststatus=2

colorscheme koehler

if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Orange
    au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

set number

set sm
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ai

syntax on

let java_highlight_all=1

let java_highlight_functions="style"

let java_allow_cpp_keywords=1

:filetype plugin on
 
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" next line required by omnicpp
set nocp
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let mapleader = ","
" This maps the sequence comma -> v to vsplit
:map <leader>v :vsplit<cr>
:map <leader>t :TlistToggle<cr>

" -- ctags --
"  " map <ctrl>+F12 to generate ctags for current folder:
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"  " add current directory's generated tags file to available tags
set tags+=./tags

set guifont=Menlo\ Regular:h12

set autoread


" g++ compile
map <leader>c : call CompileGcc()<CR>
func! CompileGcc()
    exec "w"
    exec "!g++ -Wall % -o %<"
endfunc

map <leader>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    exec "!g++ -Wall % -o %<"
    exec "! ./%<"
endfunc
" end g++ compile
map <leader>p :call PythonRun()<CR>
func! PythonRun()
    exec "w"
    exec "!python %"
endfunc
