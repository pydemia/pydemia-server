" Syntax coloring
if has("syntax")
    syntax on
endif

" One tab to 4 spaces
set softtabstop=4
set tabstop=4

" <<, >> move
set shiftwidth=4

" tab to space
set expandtab

" Indentation
set autoindent
set cindent

" Show line numbers
" set nu

" Shortcut
map <F3> "+Y
map <F4> +gP
vmap <F3> "+y
vmap <F4> "+gP
imap <F4> <ESC> "+gPi

" Show status bar
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

