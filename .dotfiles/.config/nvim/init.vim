set nocompatible
filetype off


" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'pearofducks/ansible-vim'
Plugin 'dense-analysis/ale'

call vundle#end()

if has('termguicolors')
    set termguicolors
endif
let g:sonokai_style = 'atlantis'

filetype plugin indent on

set nu     " Enable line numbers
syntax on  " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4
" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits

let g:AutoPairsShortcutToggle = '<C-P>'

nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_auto_hover=''
nmap <F9> :YcmCompleter FixIt<CR>

map <F7> :wall \| make<Cr>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-?> <Plug>(ale_detail)
let g:ale_lint_on_insert_leave = 1
let g:ale_virtualtext_cursor = 'current'
" let g:ale_cursor_detail = 1
let g:ale_set_balloons = 1
let g:ale_detail_to_floating_preview = 1
let g:ale_echo_cursor = 1
