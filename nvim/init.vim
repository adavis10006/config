" NeoVIM Configuration

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim', {'as': 'theme-onedark'}

Plug 'ntpeters/vim-better-whitespace'

Plug 'Yggdroot/indentLine', {'as': 'vim-indent-line'}

Plug 'jiangmiao/auto-pairs', {'as': 'vim-auto-pairs'}

Plug 'tpope/vim-commentary'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/vim-easy-align'

Plug 'sheerun/vim-polyglot'

Plug 'Shougo/echodoc.vim', {'as': 'vim-echodoc'}

Plug 'Shougo/deoplete.nvim', { 'as': 'nvim-deoplete', 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/neopairs.vim', {'as': 'nvim-deoplete-pairs'}
Plug 'Shougo/neoinclude.vim', {'as': 'nvim-deoplete-include'}
Plug 'zchee/deoplete-clang', {'as': 'nvim-deoplete-clang'}
Plug 'zchee/deoplete-jedi', {'as': 'nvim-deoplete-jedi'}

Plug 'vim-syntastic/syntastic', {'as': 'vim-syntastic'}
" Plug 'myint/syntastic-extras', {'as': 'vim-syntastic-extras'}

Plug 'plasticboy/vim-markdown'

Plug 'mhinz/vim-signify'

Plug 'mhinz/vim-grepper', {'on': ['Grepper', '<plug>(GrepperOperator)']}

Plug 'Shougo/denite.nvim', {'as': 'nvim-denite'}

Plug 'tpope/vim-fugitive'

call plug#end()

set ignorecase
set hlsearch

set number
set numberwidth=5
set foldenable
set foldcolumn=8
set foldmethod=syntax
set foldlevel=6

set termencoding=utf-8

set expandtab
set tabstop=2
set shiftwidth=2

set pastetoggle=<F12>

" hit enter to cancel searched highlight
nmap <CR> :nohlsearch<CR>

" tab hotkey
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-Up> :tabnew<CR>
nnoremap <C-Down> :bd<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-Up> <Esc>:tabnew<CR>
inoremap <C-Down> <Esc>:bd<CR>

" regenerate indent
nmap <Leader>it :set noet\|retab!<CR>
nmap <Leader>is :set et\|retab!<CR>
nmap <Leader>ir :%s/\s\+$//e<CR>

" fold control
nmap <F2> :foldclose<CR>
nmap <F3> :foldopen<CR>

set backspace=start,eol,indent         " Backspcae
set modeline                           " Enable modeline.
set noerrorbells                       " No beeps.
set fileencodings=utf8,big5,gbk,latin1 " set fileopentype
set smartcase                          " ... unless the query has capital letters.
set gdefault                           " Use 'g' flag by default with :s/foo/bar/.
set magic                              " Use 'magic' patterns (extended regular expressions).
set mouse=a                            " Use mouse
set ruler                              " show line info
set scrolloff=5                        " scroll while close under
set showcmd                            " show command
set showmatch                          " Show matching brackets.
set showmode                           " Show current mode.
set smartindent                        " Autoindent
set timeoutlen=1000                    " escape delay
set wildmenu                           " Autocomplete menu

set formatoptions+=o    " Continue comment marker in new lines.
set linespace=0         " Set line-spacing to minimum.
set textwidth=0         " Hard-wrap long lines as you type them.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitright          " Vertical split to right of current.
set splitbelow          " Horizontal split below current.

" ********************
"  General Setting
" ********************

let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.6'

" ********************
"  Language Setting
" ********************

autocmd filetype cpp,c set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd filetype python set tabstop=2 | set shiftwidth=2 | set expandtab

" ********************
"  Plugin Setting
" ********************
" - airline
let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#taboo#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" - onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
filetype plugin indent on
syntax on
colorscheme onedark
set cursorline
hi CursorLine cterm=NONE ctermbg=238 ctermfg=NONE

" - vim-indent-line
let g:indentLine_enabled = 1
let g:indentLine_faster = 1
let g:indentLine_leadingSpaceEnabled = 1

" - vim-auto-pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"'}
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutFastWrap = '<C-f>'
let g:AutoPairsShortcutBackInsert = '<C-b>'

" - vim-ployglot
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

" - echodoc
set noshowmode
let g:echodoc#enable_at_startup = 1

" - deoplete
set completeopt-=preview
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_complete_delay = 10
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.cpp = ['dictionary', 'buffer', 'member', 'omni', 'tag', 'around']
let g:deoplete#ignore_sources.python = ['dictionary', 'buffer', 'member', 'omni', 'tag', 'around']

" - deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/4.0.1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/4.0.1/lib/clang'

" - syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" - syntastic-extras
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_config_file = '.clang_check'
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_errorformat = '%f:%l:%c: %trror: %m'
let g:syntastic_cpp_compiler = 'clang++'

" - markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
