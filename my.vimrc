set shell=/bin/bash
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'msanders/snipmate.vim.git'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'itchyny/lightline.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kana/vim-submode'

call vundle#end()
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set number
set bg=dark

"autocmd vimenter * NERDTree
noremap <C-n> :set nocursorline<CR>
      \:set nocursorcolumn<CR>
      \:NERDTreeToggle<CR>
      \:set number<CR>
vnoremap <C-n> <C-C>:NERDTreeToggle<CR>
inoremap <C-n> <C-O>:NERDTreeToggle<CR>

noremap <C-t> :tabnew<CR>
vnoremap <C-t> <C-C>:tabnew<CR>
inoremap <C-t> <C-O>:tabnew<CR>

noremap <C-d> :tabn<CR>
vnoremap <C-d> <C-C>:tabn<CR>
inoremap <C-d> <C-O><C-O>:tabn<CR>

noremap <C-a> :tabp<CR>
vnoremap <C-a> <C-C>:tabp<CR>
inoremap <C-a> <C-O>:tabp<CR>

noremap <F12> :tabedit ~/.vimrc<CR>
vnoremap <F12> <C-C>:tabedit ~/.vimrc<CR>
inoremap <F12> <C-O>:tabedit ~/.vimrc<CR>

noremap <F10> :source ~/.vimrc<CR>
vnoremap <F10> <C-C>:source ~/.vimrc<CR>
inoremap <F10> <C-O>:source ~/.vimrc<CR>

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufEnter * set number

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }

let NERDTreeIgnore = [
      \'\.pyc$',
      \'manage.py$', 
      \'migrations$',
      \'__init__.py$', 
      \'\.sqlite3$',
      \'\.sqlite$'
      \]
map <Leader> <Plug>(easymotion-prefix)

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j

noremap <C-Left> <C-w><
noremap <C-Right> <C-w>>
noremap <C-Up> <C-w>+
noremap <C-Down> <C-w>-

noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>

" call submode#enter_with('undo/redo', 'n', '', 'g-', 'g-')
" call submode#enter_with('undo/redo', 'n', '', 'g+', 'g+')
" call submode#leave_with('undo/redo', 'n', '', '<Esc>')
" call submode#map('undo/redo', 'n', '', '-', 'g-')
" call submode#map('undo/redo', 'n', '', '+','g+')

" let g:submode_timeout='0'
" let g:submode_keep_leaving_key='1'
"let g:ycm_global_ycm_extra_conf = 'path to .ycm_extra_conf.py'
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

noremap şO O<Esc>
noremap şo o<Esc>
noremap şş :w<CR>
noremap şn :set number!<CR>
noremap çç i<SPACE><Esc>ea<SPACE><Esc>
noremap çb i<SPACE><Esc>w
noremap çn ea<SPACE><Esc>
inoremap <F5> <Esc>
set cursorcolumn
set cursorline

   augroup BgHighlight
       autocmd!
       autocmd BufEnter * set cursorcolumn
       autocmd BufEnter * set cursorline
       autocmd BufLeave * set nocursorcolumn
       autocmd BufLeave * set nocursorline 
   augroup END

set so=10
if $COLORTERM == 'mate-terminal'
    set t_Co=256
endif
if $COLORTERM == 'tmux'
    set t_Co=256
endif 

noremap ül :colorscheme github<CR>
noremap üd :colorscheme vividchalk<CR>
            \:highlight cursorline term=bold cterm=NONE ctermbg=234<CR>
            \:highlight colorcolumn term=bold cterm=NONE ctermbg=238<CR>


colorscheme vividchalk

highlight cursorline term=bold cterm=NONE ctermbg=234" ctermbg=234
let &colorcolumn=join(range(81,999),",")
highlight colorcolumn term=bold cterm=NONE ctermbg=232

filetype plugin on
set omnifunc=syntaxcomplete#Complete

