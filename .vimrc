colorscheme molokai
syntax on
" set number
set t_Co=256
set ts=2 sts=2 sw=2 expandtab
set cursorline
set relativenumber
set encoding=utf-8

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <End> <nop>
nnoremap <Home> <nop>
nnoremap <Delete> <nop>
nnoremap <PageUp> <nop>
nnoremap <PageDown> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <end> <nop>
inoremap <home> <nop>
inoremap <Delete> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>

nnoremap j gj
nnoremap k gk

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
