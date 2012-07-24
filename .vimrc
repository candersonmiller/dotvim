" put me in the root directory!!!! /Users/<username>/.vimrc
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
syntax on
colorscheme default

au BufRead,BufNewFile *.scala,*.java,*.c,*.m set number

filetype on
filetype indent on
filetype plugin on

command Marked !open -a Marked %:p
command Sbin !sbinutil -f %:p

set clipboard=unnamed
set dictionary=/usr/share/dict/words
set ts=2
set sw=2
set sts=0
set expandtab
"set foldmethod=indent
set nofoldenable 
set ignorecase
set autoindent
set copyindent
set smartindent

"  colorscheme osx

map <F2> <esc>:n **/*.scala<CR>:n **/*.java<CR><esc><esc>:silent! :bw \*\*\/\*\.java<CR><esc><esc>:silent! :bw \*\*\/\*\.scala<CR><esc><esc>:silent! :bw \*\*\/\*\.m<CR><esc><esc>:silent! :bw \*\*\/\*\.h<CR><esc>

" quick timestamp-as-comment command 
command DS r!echo ; date

" turn off hilighting for CDATA
hi def link xmlCdata NONE


set encoding=utf-8
setglobal fileencoding=utf-8

autocmd BufEnter Makefile set noexpandtab
autocmd BufEnter makefile set noexpandtab
autocmd BufEnter *.h,*.m set expandtab ts=4 sw=4
autocmd BufEnter *.xml set expandtab
autocmd BufEnter *.tag set expandtab syntax=xml
autocmd BufEnter *.json set expandtab syntax=json
autocmd BufEnter *.ftl,*.macro set filetype=ftl noexpandtab
autocmd BufEnter *.java set ts=4 sw=4 expandtab
autocmd BufEnter *.jsp set ts=2 sw=2 expandtab
autocmd BufEnter *.scala set ts=2 sw=2 expandtab
autocmd BufEnter *.sql set ts=2 sw=2 expandtab
autocmd BufEnter *.rb set ts=2 sw=2 expandtab


