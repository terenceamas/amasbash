" set vim default backup directory, you should do mkdir ~/vi_backup/ first
" set backupdir=~/vi_backup/
" set backup

" after moving curser, we can still backsapce, del
set bs=2

":highlight this commnd can list all color setting
" save .vimrc, auto exec, after saving .vimrc the setting implemented
autocmd! bufwritepost .vimrc source %

syntax on

set t_Co=256
" installed color scheme (~/.vim/colors)
"colorscheme wombat256mod
colorscheme wombat256i
"colorscheme desertEx
"colorscheme deus
"colorscheme codeschool
"colorscheme github
"colorscheme darth
"colorscheme leya
"colorscheme wikipedia
"colorscheme fx
"colorscheme colokschi-light
"colorscheme colokschi-dark
"colorscheme monokai-phoenix
"colorscheme monokai
"colorscheme molokai
"colorscheme jellybeans
"colorscheme obsidian
"colorscheme maui
"colorscheme clearance
"colorscheme landscape
"colorscheme one
"colorscheme sunburst
"colorscheme peaksea
"colorscheme eldar
"colorscheme kylo
"colorscheme VisualStudioDark
"colorscheme radicalgoodspeed
"colorscheme kolor
"colorscheme industry
"colorscheme Chasing_Logic
"colorscheme lizard
"colorscheme lizard256
"colorscheme synic
" vim default color scheme
"colorscheme default 
"colorscheme torte
"colorscheme koehler
"colorscheme evening
"colorscheme ron
"colorscheme elflord
"colorscheme desert
"colorscheme darkblue
"colorscheme delek
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme zellner
highlight Search term=reverse ctermbg=4 ctermfg=7
"highlight Normal ctermbg=black ctermfg=lightgray
"highlight Folded ctermbg=black ctermfg=darkcyan
"hi Comment ctermbg=black ctermfg=darkcyan

" bottom info bar
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine ctermfg=darkgreen ctermbg=white

" highlight search entry
set hlsearch

filetype on
set number
set cindent
"set autoindent
"set smartindent
set nocp incsearch
set cinwords=if,else,while,do,for,switch


" \t replaced with 4 blocks
"set expandtab
" set tab and indent size
set shiftwidth=2
set softtabstop=2
set tabstop=2

" :sp will show all files
set wildmenu

" use {{{ }}} to Folded
"set foldmethod=marker

" {{{ UTF-8 Big5 Setting
" these setting let vim save files with utf-8.
"set fileencodings=big5,utf-8
"set termencoding=utf-8
"set enc=utf-8
"set tenc=utf8
" }}}

"imap <C-n> <Esc>:w<CR><Esc>
nnoremap <silent> <F9> :set paste<CR>

" remember the last place you edit a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"if has("autocmd")
"    autocmd BufRead *.txt set tw=78
"    autocmd BufReadPost *
"    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"    \   exe "normal g'\"" |
"    \ endif
"endif



