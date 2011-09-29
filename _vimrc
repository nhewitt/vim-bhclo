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

 colorscheme torte

 :filetype plugin on

nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
 
