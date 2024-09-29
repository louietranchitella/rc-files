set nocompatible
filetype off

"set rtp+=~/.vim/bundle/vundle/
"call vundle#begin()

"" This is the Vundle package, which can be found on GitHub.
"" " For GitHub repos, you specify plugins using the
"" " 'user/repository' format
"Plugin 'gmarik/vundle'

"" " We could also add repositories with a ".git" extension
"Plugin 'scrooloose/nerdtree.git'

"" " To get plugins from Vim Scripts, you can reference the plugin
"" " by name as it appears on the site
"Plugin 'Buffergator'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'airblade/vim-gitgutter'
""Plugin 'mhinz/vim-signify'

"" " Now we can turn our filetype functionality back on
"call vundle#end()
filetype plugin indent on

set number
set rnu
set backspace=indent,eol,start
set showcmd
set showmode
set visualbell
set autoread

syntax on

set incsearch
set hlsearch

"set noswapfile

set autoindent

set smartindent
set smarttab

set tabstop=2
set ts=8
set sw=4
set sts=4
set expandtab

set showcmd "display incomplete commands
set title "show title in console title bar

set t_Co=256

set term=xterm-256color
set term=xterm
set term=screen-256color

set background=dark
"colorscheme 256-jungle
"colorscheme shades_of_purple

set ttymouse=xterm2
"set mouse=n

set mouse=a

nmap ,cr :!cscope -Rb<enter> :cs reset<enter>
"map ;qq to run an ag search on the token under the cursor
nmap ;qq :!ag <cword> <CR>

"map printf shortcut to ;pr
imap ;pr printf("\n",);<left><left><left><left><left><left>

nmap ,sp :set paste<enter>
nmap ,so :set nopaste<enter>

if executable('ag')
    " Use ag over grep
    " set grepprg=ag\ --nogroup\ --nocolor
    set grepprg=ag\ --nogroup

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_user_command = 'ag %s -l -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

nmap ,cr :!cscope -Rb<enter> :cs reset<enter>

if &term =~ "xterm"
    "256 colors"
    let  &t_Co = 256
    " restore screen after quitting"
    let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
    let &t_te = "\<Esc>[?47l\<Esc>8"
    if has("terminfo")
        let &t_Sf = "\<Esc>[3%p1%dm"
        let &t_Sb = "\<Esc>[4%p1%dm"
    else
        let &t_Sf = "\<Esc>[3%dm"
        let &t_Sb = "\<Esc>[4%dm"
    endif
endif

" Better Whitespace Code
"let g:better_whitespace_ctermcolor='<desired_color>'
"let g:better_whitespace_enabled=1
"let g:strip_whitespace_on_save=1

"set updatetime=100

highlight SignifySignAdd cterm=bold ctermbg=none ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=none ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=none ctermfg=227
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_change = '~'
let g:signify_sign_delete_first_line = g:signify_sign_change
let g:signify_sign_changedelete = g:signify_sign_change

