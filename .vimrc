" put me in the root directory!!!! /Users/<username>/.vimrc

" command Marked !open -a Marked %:p
" command Sbin !sbinutil -f %:p
" set clipboard=unnamed

" 
" " quick timestamp-as-comment command 
command DS r!echo ; date
" " turn off hilighting for CDATA
hi def link xmlCdata NONE

execute pathogen#infect()
" make sure colored syntax mode is on
if has("terminfo")
	set t_Co=8
	set t_Sf=[3%p1%dm
 	set t_Sb=[4%p1%dm
else
	set t_Co=8
  set t_Sb=[3%dm
  set t_Sf=[4%dm
endif
colorscheme default
 
syntax on
filetype plugin indent on
set encoding=utf-8
setglobal fileencoding=utf-8
set ts=2
set sw=2
set sts=0
set dictionary=/usr/share/dict/words
set expandtab
set foldmethod=indent
set nofoldenable 
set ignorecase
set autoindent
set copyindent
set smartindent

augroup BufNewFileFromTemplate
au!
autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
autocmd BufNewFile * normal! G"_dd1G
autocmd BufNewFile * silent! match Todo /TODO/
augroup BufNewFileFromTemplate
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#E0E0E0 ctermbg=1
set number



