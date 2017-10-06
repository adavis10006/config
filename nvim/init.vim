" NeoVIM Configuration

call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
" Plug 'jacoborus/tender.vim', { 'as': 'vim-color-tender' }
" Plug 'JBakamovic/yaflandia', {'as': 'vim-color-yaflandia'}
" Plug 'miconda/lucariox.vim', {'as': 'vim-color-lucariox'}
" Plug 'morhetz/gruvbox', {'as': 'vim-color-gruvbox'}
" Plug 'mhartington/oceanic-next', {'as': 'vim-color-oceanic-next'}
" Plug 'joshdick/onedark.vim', {'as': 'vim-color-onedark'}
" Plug 'w0ng/vim-hybrid', {'as': 'vim-color-hybrid'}
" Plug 'ajmwagar/vim-deus', { 'as': 'vim-color-deus' }
" Plug 'rakr/vim-one', { 'as': 'vim-color-one' }
" Plug 'NigoroJr/color_coded-colorschemes', { 'as': 'vim-color-coded' }

" support pre-compile
Plug 'w0rp/ale', {'as': 'vim-code-lint'}
" Plug 'vim-syntastic/syntastic', {'as': 'vim-code-syntastic'}

Plug 'Valloric/YouCompleteMe', { 'as': 'vim-code-ycm', 'do': './install.py --clang-completer --go-completer --rust-completer' }
Plug 'rdnetto/YCM-Generator', { 'as': 'vim-code-ycm-generator', 'branch': 'stable'}

" support snippet
" Plug 'SirVer/ultisnips', {'as': 'vim-code-ultisnips'}
" Plug 'honza/vim-snippets', {'as': 'vim-code-snippet'}

" Plug 'ervandew/supertab', {'as': 'vim-code-supertab'}

" CPP
Plug 'jeaye/color_coded', { 'as': 'vim-code-color', 'do': 'rm -rf build && mkdir build && cd build && cmake .. && make && make install' }
Plug 'rhysd/vim-clang-format', { 'as' : 'vim-lang-cpp-format' }
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'bfrg/vim-cpp-modern', { 'as': 'vim-code-cpp-modern' }

" Rust
Plug 'racer-rust/vim-racer', { 'as': 'vim-lang-rust-completion'}
Plug 'rust-lang/rust.vim', { 'as': 'vim-lang-rust-config'}

" Python
Plug 'davidhalter/jedi-vim'

" Javascript
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'

" Go
Plug 'fatih/vim-go'
Plug 'tpope/vim-cucumber'

" support lang highlight
" Plug 'sheerun/vim-polyglot'

" show trailing white space
Plug 'ntpeters/vim-better-whitespace'

" show indent
Plug 'Yggdroot/indentLine', {'as': 'vim-indent-line'}

" support auto pair
Plug 'Raimondi/delimitMate', {'as': 'vim-auto-pairs'}
" Plug 'jiangmiao/auto-pairs', {'as': 'vim-auto-pairs'}

" support quick comment
Plug 'tpope/vim-commentary'

" support multiple line edit
Plug 'terryma/vim-multiple-cursors'

Plug 'scrooloose/nerdtree'

" support markdown
" Plug 'plasticboy/vim-markdown'

" support git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" support ctag
Plug 'majutsushi/tagbar'

" support fuzzy
" Plug 'mhinz/vim-grepper', {'on': ['Grepper', '<plug>(GrepperOperator)']}
" Plug 'Shougo/denite.nvim', {'as': 'nvim-denite'}
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

call plug#end()

" This line needs to go after vundle#end().
" call glaive#Install()

set ignorecase
set hlsearch

set number
set numberwidth=6
" set foldenable
" set foldcolumn=3
" set foldmethod=syntax
" set foldnestmax=3
" set foldlevel=4

set termencoding=utf-8

set expandtab
set tabstop=4
set shiftwidth=4

set pastetoggle=<F12>

set colorcolumn=79
set backspace=start,eol,indent         " Backspcae
set modeline                           " Enable modeline.
set noerrorbells                       " No beeps.
set fileencodings=utf8,big5,gbk,latin1 " set fileopentype
set smartcase                          " ... unless the query has capital letters.
" set gdefault                           " Use 'g' flag by default with :s/foo/bar/.
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
set linespace=2         " Set line-spacing to minimum.
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

filetype plugin indent on
autocmd filetype markdown,md set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd filetype cpp,c set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd filetype cpp,c setlocal commentstring=//\ %s
autocmd filetype python set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd filetype javascript set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd filetype javascript setlocal commentstring=//\ %s
autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

source ~/.vim/keymapping.vim
" ********************
"  Plugin Setting
" ********************
" - airline
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#taboo#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" colorscheme lucariox
" colorscheme badwolf
" colorscheme yaflandia
" colorscheme deus
colorscheme molokai
" colorscheme onedark
" let g:badwolf_darkgutter = 1
" let g:badwolf_tabline = 2
" colorscheme OceanicNext
" colorscheme one
" let g:one_allow_italics = 1
" colorscheme hybrid
" colorscheme tender

syntax on
set t_Co=256
set termguicolors
set background=dark
set cursorline
hi CursorLine cterm=NONE ctermbg=238 ctermfg=NONE
hi Comment cterm=NONE ctermbg=255 ctermfg=NONE

let g:ycm_confirm_extra_conf = 0

" - vim-indent-line
let g:indentLine_enabled = 1
let g:indentLine_color_term = 249
let g:indentLine_color_gui = "Grey70"

" " - cpp-modern-highlight
" let c_no_curly_error = 1
" let g:cpp_simple_highlight = 1
" let g:cpp_concepts_highlight = 1

" - vim-markdown
" let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_conceal = 0

" - vim-code-syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_checkers = ['clang_tidy']
" let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_auto_refresh_includes = 1
" let g:syntastic_cpp_clang_tidy_args = '-checks='

" vim-code-lint
" let g:airline#extensions#ale#enabled = 1

" let g:ale_sign_column_always = 1
" let g:ale_open_list = 1
" let g:ale_list_window_size = 5

" let g:ale_completion_enabled = 0

" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_insert_leave = 1
" let g:ale_linters_explicit = 0
" let b:ale_linters = {
"     \   'cpp': ['clangtidy'],
"     \   'rust': ['cargo'],
"     \   'python': ['flake8']}
" source ~/.vim/clang-tidy.vim
" source ~/.vim/cargo.vim
" source ~/.vim/flake8.vim

" let g:ale_fixers = {
"       \   '*': ['remove_trailing_lines', 'trim_whitespace'],
"       \   'cpp': ['clang-format'],
"       \   'rust': ['rustfmt'],
"       \   'python': ['yapf'],
"       \ }
" let g:ale_fix_on_save = 1

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Glaive vtd plugin[mappings] files=`['~/todo.vtd']`
