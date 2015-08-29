" Dmitry's vimrc
:syntax on

:set nocompatible
:set autoindent
:set cindent
:set hlsearch
:set incsearch

"{ Nice 4 spaces instead of tabs
:set softtabstop=4
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set showcmd
:set smarttab
"}

" Syntax highlighting {
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*
"}

colorscheme inkpot

" Forbid arrow keys {
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
"}

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Space will toggle folds!
nnoremap <space> za

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Swap ':' with ';'
nnoremap ; :
nnoremap : ;

" Fast DOS2UNIX conversion
nnoremap <silent> <F9> :%s/$//g<CR>:%s// /g<CR>

" Fast removal of trailing whitespaces
" Status Line {
set laststatus=2                             " always show statusbar
set statusline=
set statusline+=%-10.3n\                     " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
"}
nnoremap <silent> <F8> :%s/\s\+$<CR>

" Fast removal of leading whitespaces
nnoremap <silent> <F7> :%le<CR>

" Toggle cursor highlighting
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" use 'jj' instead of ESC to leave Insert mode
inoremap jj <Esc>

" disable bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
