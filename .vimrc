set laststatus=2

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
