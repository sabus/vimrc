"-----------VUNDLE SECTION---------------"
set nocompatible               " be iMproved
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/powerline-fonts',
Bundle 'taglist.vim',
Bundle 'nerdtree',
Bundle 'SirVer/ultisnips',

" ------------GENERAL SECTION------------"
set t_Co=256
filetype plugin indent on     " required!

au BufRead,BufNewFile *.logcat set filetype=logcat
set number
:syntax on
set cursorline
set mouse=a
set hlsearch
set autoindent
set foldmethod=syntax  "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set autoindent  " noautoindent
set tabstop=8
set shiftwidth=8
set textwidth=120
set expandtab
:hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white
" ------------CTAGS SECTION------------"
" -- ctags --
" map <ctrl>+F12 to generate ctags for current folder:
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --extra=+f --exclude=prebuilt* --exclude=docs --exclude=out .<CR><CR> " add current directory's generated tags file to available tags set tags+=./tags

" TlistToggle and NERDTreeToggle shortcut
map <C-F6> :NERDTreeToggle <CR><CR>
map <C-F5> :TlistToggle <CR><CR>
map <C-F10> :BufExplorer <CR>
map <C-F9> :CCTreeLoadDB <CR><CR>

:let Tlist_Show_One_File = 1
:let Tlist_Exit_OnlyWindow = 1
:let Tlist_Use_Right_Window = 1

" let g:CCTreeKeyTraceForwardTree = '<C-p>' 
" let g:CCTreeKeyTraceReverseTree = '<C-o>' 
" let g:CCTreeKeyHilightTree = '<C-l>'        " Static highlighting
" let g:CCTreeKeyToggleWindow = '<C-F7>' 
" let g:CCTreeKeyCompressTree = 'zs'     " Compress call-tree 
" let g:CCTreeKeyDepthPlus = '<C-\>=' 
" let g:CCTreeKeyDepthMinus = '<C-\>-'
" let g:CCTreeWindowWidth = 40

":let Grep_Default_Filelist = '*.c *.cpp *.asm *.java *.aidl' 
"set listchars=tab:>-,trail:-
"set list

"set tags+=./tags
"set tags+=~/.vim/tags/android

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

noremap <C-right> <Esc><C-W>l
noremap <C-left> <Esc><C-W>h

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set guifont=DejaVu\ Sans\ Mono\ 9
  set lines=45 columns=120
endif

" ------------YouCompleteMe SECTION-----------------"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_previous_completion=['<Up>']

" ------------Syntastic SECTION-----------------"
let g:syntastic_enable_signs=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_cpp_checkers=['cpplint', 'ycm']

"-----------PowerLine SECTION---------------"
let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8

"-----------UltiSnip  SECTION---------------"
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

colorscheme nature
colorscheme baycomb

"-----------TAB key shortcuts
map <C-S-left> tabNext
map <C-S-right> tabprevious
