set nocompatible

" --- Setup Vundle ---
" https://github.com/jez/vim-as-an-ide/commit/1186be2
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" --- Making Vim look good
" https://github.com/jez/vim-as-an-ide/commit/457f2e2
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

" --- NERDTree Settings ---
" https://github.com/jez/vim-as-an-ide/commit/b7ff90c
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" --- Syntastic Setting ---
Plugin 'scrooloose/syntastic'

" --- mis, easytags and tagbar
" https://github.com/jez/vim-as-an-ide/commit/fd2c49c
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

" --- ctrp ---
" https://github.com/jez/vim-as-an-ide/commit/80db74f
Plugin 'kien/ctrlp.vim'

" --- a.vim ---
" https://github.com/jez/vim-as-an-ide/commit/8d4223f
Plugin 'vim-scripts/a.vim'

" --- Working with Git ---
" https://github.com/jez/vim-as-an-ide/commit/1e5757e
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" --- delimitMate ---
" https://github.com/jez/vim-as-an-ide/commit/2fe0507
Plugin 'Raimondi/delimitMate'

" --- Superman ---
" https://github.com/jez/vim-as-an-ide/commit/b185e9f
Plugin 'jez/vim-superman'

" --- tmux ---
" https://github.com/jez/vim-as-an-ide/commit/44f5225
Plugin 'christoomey/vim-tmux-navigator'

" --- Syntax ---
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'

" --- Ruby and Rails ---
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" --- Additional Plugins ---
" https://github.com/jez/vim-as-an-ide/commit/9089a95
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'HTML-AutoCloseTag'
Plugin 'cakebaker/scss-syntax.vim'

Plugin 'vim-scripts/AutoComplPop'

call vundle#end()

filetype plugin indent on

" --- General settings ---
" https://github.com/jez/vim-as-an-ide/commit/dff7da3

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2

syntax on

" Enable the mouse
" https://github.com/jez/vim-as-an-ide/commit/fc77b04
set mouse=a

" --- Plugin Specific Settings ---
" https://github.com/jez/vim-as-an-ide/commit/457f2e2

" --- altercation/vim-colors-solarized settings ---
" Toggle to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
colorscheme solarized

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" ---- jistr/vim-nerdtree-tabs ----
" https://github.com/jez/vim-as-an-ide/commit/b7ff90c
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
" https://github.com/jez/vim-as-an-ide/commit/144f979
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" https://github.com/jez/vim-as-an-ide/commit/fd2c49c
" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
" autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
" https://github.com/jez/vim-as-an-ide/commit/1e5757e
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
" https://github.com/jez/vim-as-an-ide/commit/2fe0507
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- jez/vim-superman settings -----
" https://github.com/jez/vim-as-an-ide/commit/b185e9f
" better man page support
noremap K :SuperMan <cword><CR>
