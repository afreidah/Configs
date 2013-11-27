set term=ansi
syntax on
colorscheme koehler
helptags ~/.vim/doc
:set laststatus=2
map <C-L> :!ctags -R --c-kinds=+p --fields=+S .<CR><CR>
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set shiftround
set cindent
set wildignore+=*.o,*.obj,*.a,*.lib,*.elf,*.exe
autocmd filetype make setlocal ts=4 sts=4 sw=4 noexpandtab
set cinkeys-=0#
nnoremap ; :

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"====[ Make the 85st column stand out ]====================

    " EI THER the entire 81st column, full-screen...
    "highlight ColorColumn ctermbg=magenta
    "set colorcolumn=81

    " OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
